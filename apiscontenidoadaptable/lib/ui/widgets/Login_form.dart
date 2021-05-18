import 'package:apiscontenidoadaptable/ui/widgets/input_text.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: [
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: 'Email Address',
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black26  
                )
              )
            ),
            child: Row(
              children: [
                Expanded(
                  child: InputText(
                    obscureText: true,
                    label: 'Password',
                    borderEnable: false,
                  ),
                ),
                TextButton(
                  onPressed: (){},
                 child: Text('Forgot Password', style: TextStyle(color: Colors.black),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
