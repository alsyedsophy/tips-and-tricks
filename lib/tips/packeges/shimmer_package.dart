import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPackage extends StatelessWidget {
  const ShimmerPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            children: [
              Container(height: 200, color: Colors.white),
              const SizedBox(height: 16),
              Container(height: 12, color: Colors.white),
              const SizedBox(height: 8),
              Container(height: 12, width: 200, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
