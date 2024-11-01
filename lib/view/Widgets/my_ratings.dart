
import 'package:doctor_module/consts/app_colors.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;

  StarRating({required this.rating, this.starCount = 5, this.size = 30.0});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    double remainingRating = rating - fullStars;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        if (index < fullStars) {
          // Full star
          return Icon(
            Icons.star_rate_rounded,
            size: size,
            color: Color(0xffF6D060),
          );
        } else if (index == fullStars && remainingRating > 0) {
          // Partial star
          return Icon(
            Icons.star_half_rounded,
            size: size,
            color: Color(0xffF6D060),
          );
        } else {
          // Empty star
          return Icon(Icons.star_rate_rounded,
              weight: 0.25, size: size, color: kgrey2);
        }
      }),
    );
  }
}
