
import 'package:country_picker/country_picker.dart';
import 'package:doctor_module/consts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/app_colors.dart';
import 'my_text.dart';

// ignore: must_be_immutable
class PhoneField extends StatefulWidget {
  PhoneField({
    Key? key,
    required this.controller,
    this.validator,
    this.onChanged,
    this.marginBottom = 16.0,
    this.haslabel = true,
  }) : super(key: key);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final double marginBottom;
  final bool haslabel;
  String? Function(String?)? validator;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  String _selectedCountryCode = '+1'; // Default country code

  @override
  Widget build(BuildContext context) {
    final _enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1.0,
        color: kgrey1,
      ),
    );

    return Padding(
      padding: EdgeInsets.only(bottom: widget.marginBottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.haslabel)
            MyText(
              text: 'Phone Number',
              size: 14,
              paddingBottom: 8,
              weight: FontWeight.w600,
            ),
          TextFormField(
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.phone,
            controller: widget.controller,
            onChanged: widget.onChanged,
            textInputAction: TextInputAction.next,
            textAlignVertical: TextAlignVertical.center,
            validator: widget.validator,
            style: TextStyle(
              fontSize: 12,
              color: kblack,
              fontFamily: AppFonts.manrope,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: ktransparent,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 0,
              ),
              hintText: '123 456 789',
              hintStyle: TextStyle(
                fontFamily: AppFonts.manrope,
                color: kgrey2,
              ),
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        countryListTheme: CountryListThemeData(
                          flagSize: 25,
                          backgroundColor: kwhite,
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: kblack,
                            fontFamily: AppFonts.manrope,
                          ),
                          bottomSheetHeight: 500,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                          ),
                          searchTextStyle: TextStyle(
                            fontSize: 12,
                            color: kblack,
                          ),
                          inputDecoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: kgrey2,
                            ),
                            border: _enableBorder,
                            enabledBorder: _enableBorder,
                            focusedBorder: _enableBorder,
                            focusedErrorBorder: _enableBorder,
                          ),
                        ),
                        onSelect: (Country country) {
                       
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 32,
                      width: 80,
                      child: Row(
                        children: [
                          Expanded(
                            child: MyText(
                              paddingLeft: 15,
                              text: _selectedCountryCode,
                              color: kblack,
                              size: 14,
                              weight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down, size: 20, color: kblack),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kgrey2,
                  width: 1,
                ),
                //borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kgreen,
                  width: 1,
                ),
               // borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
