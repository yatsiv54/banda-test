import 'dart:ui';

import 'package:banda_test_app/features/game/hud/menu/presentation/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class AnimatedScaffold extends StatefulWidget {
  final Widget child;
  const AnimatedScaffold({super.key, required this.child});

  @override
  State<AnimatedScaffold> createState() => _AnimatedScaffoldState();
}

class _AnimatedScaffoldState extends State<AnimatedScaffold>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<double> animation2;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );

    controller.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    animation = Tween<double>(
      begin: 0,
      end: screenHeight,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    animation2 = Tween<double>(
      begin: screenHeight,
      end: 0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 7, 20),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            child: _Container(
              animation: animation,
              controller: controller,
              color: Colors.blue,
              offset: -90,
            ),
          ),
          Positioned(
            right: 0,
            child: _Container(
              offset: 90,
              animation: animation2,
              controller: controller,
              color: Colors.pink,
            ),
          ),
          Center(child: widget.child),
        ],
      ),
    );
  }
}

class _Container extends StatelessWidget {
  final Animation<double> animation;
  final AnimationController controller;
  final Color color;
  final double offset;

  const _Container({
    required this.animation,
    required this.controller,
    required this.color,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Transform.translate(
        offset: Offset(offset, animation.value),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.2),
                  blurRadius: 1000,
                  spreadRadius: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
