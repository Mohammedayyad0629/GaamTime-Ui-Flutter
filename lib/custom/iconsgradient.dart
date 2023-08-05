import 'package:flutter/material.dart';

import '../static/color.dart';

class GradientColor extends StatelessWidget {
  final IconData icon;
  const GradientColor({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (rect) => const LinearGradient(
                colors: kLinearColor,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)
            .createShader(rect),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
