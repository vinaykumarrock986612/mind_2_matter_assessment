import 'dart:ui';

import 'package:flutter/material.dart';

class CoverImageCard extends StatelessWidget {
  final String imagePath;

  const CoverImageCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: 272,
        child: Stack(
          children: [
            Positioned.fill(
              child: Transform.scale(
                scale: 1.05,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
              child: Center(
                child: Image.asset(
                  height: 210,
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
