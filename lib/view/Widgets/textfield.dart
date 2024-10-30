import 'package:country_code_picker/country_code_picker.dart';
import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_fonts.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
// class MyTextField extends StatefulWidget {
//   MyTextField(
//       {Key? key,
//       this.controller,
//       this.hint,
//       this.label,
//       this.onChanged,
//       this.isObSecure = false,
//       this.marginBottom = 15.0,
//       this.maxLines,
//       this.isFilled = true,
//       this.filledColor,
//       this.focusedFilledColor = kwhite,
//       this.fhintColor = kgrey1,
//       this.hintColor,
//       this.bordercolor,
//       this.isright,
//       this.radius = 10,
//       this.haveLabel = true,
//       this.labelSize,
//       this.prefixIcon,
//       this.suffixtext,
//       this.suffixIcon,
//       this.suffixTap,
//       this.keyboardType,
//       this.showFlag,
//       this.labelColor,
//       this.useCountryCodePicker = false})
//       : super(key: key);

//   String? label, hint, suffixtext;
//   TextEditingController? controller;
//   ValueChanged<String>? onChanged;
//   bool? isObSecure,
//       haveLabel,
//       isFilled,
//       isright,
//       useCountryCodePicker,
//       showFlag;
//   double? marginBottom;
//   int? maxLines;
//   double? labelSize, radius;
//   Widget? suffixIcon;
//   Widget? prefixIcon;
//   Color? filledColor,
//       focusedFilledColor,
//       hintColor,
//       bordercolor,
//       fhintColor,
//       labelColor;
//   TextInputType? keyboardType;
//   VoidCallback? suffixTap;

//   @override
//   _MyTextFieldState createState() => _MyTextFieldState();
// }

// class _MyTextFieldState extends State<MyTextField> {
//   late FocusNode _focusNode;
//   final ValueNotifier<bool> _focusNotifier = ValueNotifier<bool>(false);

//   @override
//   void initState() {
//     super.initState();
//     _focusNode = FocusNode();
//     _focusNode.addListener(_onFocusChange);
//   }

//   @override
//   void dispose() {
//     _focusNode.removeListener(_onFocusChange);
//     _focusNode.dispose();
//     _focusNotifier.dispose();
//     super.dispose();
//   }

//   void _onFocusChange() {
//     _focusNotifier.value = _focusNode.hasFocus;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: widget.marginBottom!),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           if (widget.label != null)
//             MyText(
//               text: widget.label ?? '',
//               size: 14,
//               paddingBottom: 8,
//               weight: FontWeight.w500,
//               color: widget.labelColor ?? kblack,
//             ),
//           ValueListenableBuilder(
//             valueListenable: _focusNotifier,
//             builder: (_, isFocused, child) {
//               return TextFormField(
//                 keyboardType: widget.keyboardType,
//                 maxLines: widget.maxLines ?? 1,
//                 controller: widget.controller,
//                 onChanged: widget.onChanged,
//                 textInputAction: TextInputAction.next,
//                 obscureText: widget.isObSecure!,
//                 obscuringCharacter: '*',
//                 style: TextStyle(
//                     fontFamily: AppFonts.manrope,
//                     fontSize: 15,
//                     color: kgrey1,
//                     fontWeight: FontWeight.w500),
//                 textAlign:
//                     widget.isright == true ? TextAlign.right : TextAlign.left,
//                 focusNode: _focusNode,
//                 decoration: InputDecoration(
//                   prefixIcon: widget.useCountryCodePicker == true
//                       ? CountryCodePicker(
//                           onChanged: print,
//                           initialSelection: 'US',
//                           favorite: ['+1', 'US'],
//                           showCountryOnly: false,
//                           showFlag: widget.showFlag ?? false,
//                           showFlagDialog: widget.showFlag ?? false,
//                           showDropDownButton: true,
//                           textStyle: TextStyle(
//                             color: kgrey1,
//                             fontFamily: AppFonts.manrope,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           showOnlyCountryWhenClosed: widget.showFlag ?? false,
//                           alignLeft: false,
//                         )
//                       : widget.prefixIcon != null
//                           ? widget.prefixIcon
//                           : null,
//                   floatingLabelAlignment: FloatingLabelAlignment.start,
//                   floatingLabelBehavior: FloatingLabelBehavior.never,
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                   hintText: widget.hint,
//                   suffixIcon: widget.suffixIcon != null
//                       ? GestureDetector(
//                           onTap: widget.suffixTap,
//                           child: widget.suffixIcon,
//                         )
//                       : widget.suffixIcon,
//                   suffixStyle: TextStyle(
//                     fontFamily: AppFonts.manrope,
//                     fontSize: 14,
//                     color: isFocused ? widget.fhintColor : widget.hintColor,
//                   ),

// suffixText: widget.suffixtext,
// hintStyle: TextStyle(
//   fontFamily: AppFonts.manrope,
//   fontSize: 14,
//   color: isFocused ? widget.fhintColor : widget.hintColor,
// ),
// filled: true,
// fillColor: isFocused
//     ? widget.focusedFilledColor
//     : widget.filledColor ?? kwhite,
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(width: 1, color: kgrey2),
//                   ),
//                   // OutlineInputBorder(

//                   //   borderSide: BorderSide(
//                   //       color: widget.bordercolor ?? kgrey2, width: 1),
//                   //   borderRadius: BorderRadius.circular(widget.radius ?? 10),
//                   // ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(width: 1, color: kgreen),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyTextField extends StatefulWidget {
  MyTextField({
    Key? key,
    this.controller,
    this.hint,
    this.label,
    this.onChanged,
    this.isObSecure = false,
    this.marginBottom = 15.0,
    this.maxLines,
    this.isFilled = true,
    this.filledColor,
    this.focusedFilledColor,
    this.fhintColor,
    this.hintColor,
    this.bordercolor,
    this.isright,
    this.radius = 10,
    this.haveLabel = true,
    this.labelSize,
    this.prefixIcon,
    this.suffixtext,
    this.suffixIcon,
    this.suffixTap,
    this.keyboardType,
    this.showFlag,
    this.labelColor,
    this.labelWeight,
    this.validator,
    this.inputtextColor,
    this.useCountryCodePicker = false,
    this.useOutlinedBorder =
        false, // true for outlined border, false for underline
  }) : super(key: key);

  String? label, hint, suffixtext;
  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure,
      haveLabel,
      isFilled,
      isright,
      useCountryCodePicker,
      showFlag,
      useOutlinedBorder; // Added this flag for choosing border style
  double? marginBottom;
  int? maxLines;
  double? labelSize, radius;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Color? filledColor,
      focusedFilledColor,
      hintColor,
      bordercolor,
      fhintColor,
      inputtextColor,
      labelColor;
  FontWeight? labelWeight;
  TextInputType? keyboardType;
  VoidCallback? suffixTap;
  String? Function(String?)? validator;
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late FocusNode _focusNode;
  final ValueNotifier<bool> _focusNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _focusNotifier.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    _focusNotifier.value = _focusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.label != null)
            MyText(
              text: widget.label ?? '',
              size: 14,
              paddingBottom: 8,
              weight: widget.labelWeight ?? FontWeight.w500,
              color: widget.labelColor ?? kblack,
            ),
          ValueListenableBuilder(
            valueListenable: _focusNotifier,
            builder: (_, isFocused, child) {
              return TextFormField(
                keyboardType: widget.keyboardType,
                maxLines: widget.maxLines ?? 1,
                controller: widget.controller,
                onChanged: widget.onChanged,
                textInputAction: TextInputAction.next,
                obscureText: widget.isObSecure!,
                obscuringCharacter: '*',
                style: TextStyle(
                  fontFamily: AppFonts.manrope,
                  fontSize: 15,
                  color: widget.inputtextColor ?? kwhite,
                  fontWeight: FontWeight.w500,
                ),
                validator: widget.validator,
                textAlign:
                    widget.isright == true ? TextAlign.right : TextAlign.left,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  prefixIcon: widget.useCountryCodePicker == true
                      ? CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'US',
                          favorite: ['+1', 'US'],
                          showCountryOnly: false,
                          showFlag: widget.showFlag ?? false,
                          showFlagDialog: widget.showFlag ?? false,
                          showDropDownButton: true,
                          textStyle: TextStyle(
                            color: kgrey1,
                            fontFamily: AppFonts.manrope,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          showOnlyCountryWhenClosed: widget.showFlag ?? false,
                          alignLeft: false,
                        )
                      : widget.prefixIcon != null
                          ? widget.prefixIcon
                          : null,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  hintText: widget.hint,
                  suffixIcon: widget.suffixIcon != null
                      ? GestureDetector(
                          onTap: widget.suffixTap,
                          child: widget.suffixIcon,
                        )
                      : widget.suffixIcon,
                  suffixStyle: TextStyle(
                    fontFamily: AppFonts.manrope,
                    fontSize: 14,
                    color: isFocused ? widget.fhintColor : widget.hintColor,
                  ),
                  suffixText: widget.suffixtext,
                  hintStyle: TextStyle(
                    fontFamily: AppFonts.manrope,
                    fontSize: 14,
                    color: isFocused ? widget.fhintColor : widget.hintColor,
                  ),
                  filled: true,
                  fillColor: isFocused
                      ? widget.focusedFilledColor
                      : widget.filledColor ?? kwhite,
                  // Conditional Borders based on user choice
                  enabledBorder: widget.useOutlinedBorder == true
                      ? OutlineInputBorder(
                          borderSide: BorderSide(
                              color: widget.bordercolor ?? kgrey2, width: 1),
                          borderRadius:
                              BorderRadius.circular(widget.radius ?? 10),
                        )
                      : UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: widget.bordercolor ?? kgrey2, width: 1),
                        ),
                  focusedBorder: widget.useOutlinedBorder == true
                      ? OutlineInputBorder(
                          borderSide: BorderSide(
                              color: widget.bordercolor ?? kgrey2, width: 1.5),
                          borderRadius:
                              BorderRadius.circular(widget.radius ?? 10),
                        )
                      : UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  widget.bordercolor ?? kgrey1.withOpacity(0.3),
                              width: 1.5),
                        ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
