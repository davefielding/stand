import 'package:flutter/material.dart';
import 'package:stand/flutter_flow/flutter_flow_theme.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    @required this.controller,
    this.hintText = '',
    this.obscureText = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 0, 20),
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.textFieldBackground,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: FlutterFlowTheme.hintText,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
            style: FlutterFlowTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
