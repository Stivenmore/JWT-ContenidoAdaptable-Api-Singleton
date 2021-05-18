import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final bool obscureText, borderEnable;
  final String label;
  final TextInputType keyboardType;
  InputText(
      {Key key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.borderEnable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
          border: this.borderEnable? null : InputBorder.none,
          labelText: this.label,
          labelStyle: TextStyle(
              color: Colors.black45,
              fontSize: 18,
              fontWeight: FontWeight.w500)),
    );
  }
}
