import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'startup_state.dart';
part 'startup_cubit.freezed.dart';

class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(const StartupState.initial());

  Future<void> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final hasLaunched = prefs.getBool('has_launched') ?? false;

    if (!hasLaunched) {
      await prefs.setBool('has_launched', true);

      try {
        final response = await http.get(
          Uri.parse(
            'https://ybotm4mn5d.execute-api.eu-central-1.amazonaws.com/testing',
          ),
        );

        if (response.statusCode == 200) {
          final validJsonString = response.body.replaceAll("'", '"');

          final data = jsonDecode(validJsonString);
          final result = data['result']?.toString() ?? '';

          await prefs.setString('saved_content', result);
          emit(StartupState.showContent(result));
        } else {
          emit(const StartupState.showGame());
        }
      } catch (e) {
        emit(const StartupState.showGame());
      }
    } else {
      final savedContent = prefs.getString('saved_content');
      if (savedContent != null && savedContent.isNotEmpty) {
        emit(StartupState.showContent(savedContent));
      } else {
        emit(const StartupState.showGame());
      }
    }
  }
}
