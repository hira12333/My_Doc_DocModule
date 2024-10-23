
import 'package:doctor_module/consts/app_colors.dart';
import 'package:flutter/material.dart';

BoxDecoration circle(Color color, Color? borderColor) {
  return BoxDecoration(
      shape: BoxShape.circle,
      color: color,
      border: Border.all(color: borderColor ?? Colors.transparent));
}

BoxDecoration rounded(Color color) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: color,
    boxShadow: [
      BoxShadow(
        color: kblack.withOpacity(0.06),
        blurRadius: 20,
        offset: Offset(0, -1), // Shadow position
      ),
    ],
  );
}

BoxDecoration roundedsr(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
    boxShadow: [
      BoxShadow(
        color: kblack.withOpacity(0.2),
        blurRadius: 5,
        offset: Offset(2, 2), // Shadow position
      ),
    ],
  );
}

class KTertiaryColor {}

BoxDecoration rounded2(Color color, Color? borderColor) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: color,
    border: Border.all(
      color: borderColor ?? Colors.transparent,
    ),
  );
}

BoxDecoration rounded2r(Color color, Color? borderColor, double radius) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
      border: Border.all(color: borderColor ?? Colors.transparent));
}

BoxDecoration roundedr(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  );
}
