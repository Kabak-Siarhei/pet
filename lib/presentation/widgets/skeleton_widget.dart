import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonWidget extends Shimmer {
  SkeletonWidget({
    double? height,
    double? width,
    Widget? child,
    super.key,
  }) : super.fromColors(
          baseColor: Colors.grey.shade100,
          highlightColor: Colors.white,
          child: child ??
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
        );
}
