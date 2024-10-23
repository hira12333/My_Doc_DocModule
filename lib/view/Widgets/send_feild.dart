// import 'package:doctor_app/consts/app_colors.dart';
// import 'package:doctor_app/consts/app_sizes.dart';
// import 'package:doctor_app/controllers/chat_controller/chat_controller.dart';

// import 'package:flutter/material.dart';

// class SendField extends StatelessWidget {
//   final String? hintText;
//   final ValueChanged<String>? onChanged;
//   final GestureTapCallback? onTap;
//   final FormFieldValidator<String>? validator;
//   final VoidCallback? onAdd, onPickImage, onSendTap;

//   SendField({
//     Key? key,
//     this.hintText,
//     this.onChanged,
//     this.onTap,
//     this.validator,
//     this.onAdd,
//     this.onPickImage,
//     this.onSendTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: AppSizes.DEFAULT,
//       child: Row(
//         children: [
//           Expanded(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: TextFormField(
//                 cursorColor: kblack,
//                 textAlignVertical: TextAlignVertical.center,
//                 controller: ChatController.instance.textEditingController,
//                 onTap: onTap,
//                 onChanged: onChanged,
//                 validator: validator,
//                 cursorWidth: 1.0,
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: kblack,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: kwhite,
//                   hintText: hintText ?? 'Send a message...',
//                   hintStyle: TextStyle(
//                     fontSize: 12,
//                     color: kgreen,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 15),
//                   suffixIcon: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.photo, color: kblack),
//                         onPressed: onPickImage,
//                       ),
//                     ],
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(50),
//                     borderSide: BorderSide(
//                       width: 0.82,
//                       color: kgrey1,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(50),
//                     borderSide: BorderSide(
//                       width: 0.82,
//                       color: kgrey2,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 15),
//           GestureDetector(
//             onTap: onSendTap,
//             child: Icon(
//               Icons.send,
//               size: 48,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
