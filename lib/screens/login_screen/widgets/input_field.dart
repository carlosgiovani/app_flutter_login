import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint; //texto do campo
  final bool obscure; // se vai ser campo de senha
  final IconData icon; //icone do campo

  InputField({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 1,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5)
        ),
      ),
    );
  }
}
