import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_fonts.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedText extends StatefulWidget {
  AnimatedText(
      {super.key,
      required this.endCount,
      this.size,
      this.color,
      required this.fixednumber,
      this.hasdollor});
  double endCount = 0;
  int fixednumber = 0;
  double? size;
  Color? color;
  bool? hasdollor;
  @override
  // ignore: library_private_types_in_public_api
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _countingAnimation;
  double _currentCount = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // You can adjust the duration
    );

    _countingAnimation =
        Tween<double>(begin: 0, end: widget.endCount).animate(_controller)
          ..addListener(() {
            setState(() {
              _currentCount = _countingAnimation.value;
            });
          });

    _controller.forward();

    _controller.addStatusListener((status) {});
  }

  @override
  Widget build(BuildContext context) {
    return MyText(
      color: widget.color ?? kgreen,
      weight: FontWeight.bold,
      text: widget.hasdollor == true
          ? "\$" + _currentCount.toStringAsFixed(widget.fixednumber)
          : _currentCount.toStringAsFixed(widget.fixednumber),
      size: widget.size ?? 12,
      fontFamily: AppFonts.manrope,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
