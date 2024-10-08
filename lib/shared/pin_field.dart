import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinInputScreen extends StatefulWidget {
  const PinInputScreen(
      {super.key,
      required this.onComplete,
      required this.lenght,
      required this.obscure});

  final VoidCallback onComplete;
  final int lenght;
  final bool obscure;

  @override
  PinInputScreenState createState() => PinInputScreenState();
}

class PinInputScreenState extends State<PinInputScreen> {
  TextEditingController pinController = TextEditingController();
  String? currentPin;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PinCodeTextField(
        appContext: context,
        length: widget.lenght,
        animationType: AnimationType.fade,
        keyboardType: TextInputType.number,
        obscureText: widget.obscure,
        showCursor: true,
        cursorColor: black,
        controller: pinController,
        onChanged: (value) {
          setState(() {
            currentPin = value;
          });
        },
        onCompleted: (value) {
          widget.onComplete;
        },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderWidth: 1.0,
          borderRadius: BorderRadius.circular(small),
          fieldHeight: 50,
          fieldWidth: 50,
          inactiveColor: black2.withOpacity(0.4),
          selectedColor: black2.withOpacity(0.7),
          activeColor: black2.withOpacity(0.7),
          activeFillColor: black2.withOpacity(0.7),
          errorBorderColor: red.withOpacity(0.5),
        ),
      ),
    );
  }
}
