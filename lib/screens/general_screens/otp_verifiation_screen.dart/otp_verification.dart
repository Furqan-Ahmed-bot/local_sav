// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

// import 'package:circular_countdown_timer/circular_countdown_timer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:local_saviors/resources/components/round_button.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_field_style.dart';
// import 'package:otp_text_field/style.dart';
// import '../../../resources/components/back_appbar_button.dart';
// import '../../../resources/components/text_fields.dart';
// import '../../../utils/images/image_assets.dart';

// class OtpVerificationScreen extends StatelessWidget {
//   const OtpVerificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: BackButtonWidget(
//           onTap: () {
//             Get.back();
//           },
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFFD6EFFF), // Light blue shade for the top
//               Color(0xFFFFFFFF), // White shade for the bottom
//             ],
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               110.verticalSpace,
//               Center(
//                 child: Image.asset(
//                   ImageAssets.coloredlogo,
//                   scale: 3.5,
//                 ),
//               ),
//               50.verticalSpace,
//               Text(
//                 'Verification?',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//               20.verticalSpace,
//               Text(
//                 'We have sent you an email containing 4 digits verification code. Please enter the code to verify your identity',
//                 style: TextStyle(
//                   fontSize: 13,
//                 ),
//               ),
//               20.verticalSpace,
//               Container(
//                 color: Colors.red,
//                 height: 5,
//                 width: 50,
//               ),
//               40.verticalSpace,
//               Center(
//                 child: OTPTextField(
//                   //controller: otpController,
//                   length: 4,
//                   margin: EdgeInsets.symmetric(horizontal: 1.w),
//                   width: 0.8.sw,

//                   textFieldAlignment: MainAxisAlignment.spaceAround,
//                   fieldWidth: 50,
//                   contentPadding: EdgeInsets.symmetric(vertical: 2),
//                   fieldStyle: FieldStyle.box,
//                   otpFieldStyle: OtpFieldStyle(
//                     backgroundColor: Colors.white,
//                     // borderColor: AppColor.primaryButtonColor,
//                     enabledBorderColor: Color(0xffB2C2DC80),
//                     disabledBorderColor: Colors.green,
//                     focusBorderColor: Colors.pink,
//                   ),
//                   outlineBorderRadius: 5.r,
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),

//                   onChanged: (pin) {
//                     print("Changed: " + pin);
//                   },
//                   onCompleted: (value) {},
//                 ),
//               ),
//               Center(
//                   child: Container(
//                     height: 130.h,
//                     width: 130.w,
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       shape: BoxShape.circle,
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                             offset: const Offset(0, 1),
//                             color: const Color(0xff000029).withOpacity(0.20),
//                             blurRadius: 10) //blur radius of shadow
//                       ],
//                     ),
//                     child: CircularCountDownTimer(
//                       // Countdown duration in Seconds.
//                       duration: _duration,

//                       // Countdown initial elapsed Duration in Seconds.
//                       initialDuration: 0,

//                       // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
//                       controller: _controller,

//                       // Width of the Countdown Widget.
//                       width: 140.w,

//                       // Height of the Countdown Widget.
//                       height: 140.h,

//                       // Ring Color for Countdown Widget.
//                       ringColor: Colors.transparent,

//                       // Ring Gradient for Countdown Widget.
//                       ringGradient: null,

//                       // Filling Color for Countdown Widget.
//                       fillColor: AppColor.primaryButtonColor,

//                       // Filling Gradient for Countdown Widget.
//                       fillGradient: null,

//                       // Background Color for Countdown Widget.
//                       backgroundColor: AppColor.whiteColor,

//                       // Background Gradient for Countdown Widget.
//                       backgroundGradient: null,

//                       // Border Thickness of the Countdown Ring.
//                       strokeWidth: 5.0,

//                       // Begin and end contours with a flat edge and no extension.
//                       strokeCap: StrokeCap.round,

//                       // Text Style for Countdown Text.
//                       textStyle: TextStyle(
//                         fontSize: 18.sp,
//                         color: AppColor.secondaryfontColor,
//                         fontWeight: FontWeight.bold,
//                       ),

//                       // Format for the Countdown Text.
//                       textFormat: CountdownTextFormat.MM_SS,

//                       // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
//                       isReverse: false,

//                       // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
//                       isReverseAnimation: false,

//                       // Handles visibility of the Countdown Text.
//                       isTimerTextShown: true,

//                       // Handles the timer start.
//                       autoStart: true,

//                       // This Callback will execute when the Countdown Starts.
//                       onStart: () {
//                         // Here, do whatever you want
//                         debugPrint('Countdown Started');
//                       },

//                       // This Callback will execute when the Countdown Ends.
//                       onComplete: () {
//                         // Here, do whatever you want
//                         print("object1212");
//                         setState(() {
//                           complete = true;
//                         });
//                         // getOtp(context);
//                         debugPrint('Countdown Ended');
//                       },

//                       // This Callback will execute when the Countdown Changes.
//                       onChange: (String timeStamp) {
//                         // Here, do whatever you want
//                         debugPrint('Countdown Changed $timeStamp');
//                       },
//                     ),
//                   ),
//                 ),
//               40.verticalSpace,
//               RoundButton(
//                   buttonColor: Color(0xffE50000),
//                   height: 40,
//                   width: 0.9.sw,
//                   title: 'Continue',
//                   onPress: () {
//                     Get.to(() => OtpVerificationScreen());
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
