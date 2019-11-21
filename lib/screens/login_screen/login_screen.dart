import 'package:app_flutter_login/screens/login_screen/widgets/form_container.dart';
import 'package:app_flutter_login/screens/login_screen/widgets/sign_up_button.dart';
import 'package:app_flutter_login/screens/login_screen/widgets/stagger_animation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>  with SingleTickerProviderStateMixin{
  AnimationController _animationController;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
      duration: Duration(seconds: 2),
    );
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bgScreen.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset('images/logo.png', height: 150, width: 150, fit: BoxFit.contain,),
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
                StaggerAnimation(
                  controller: _animationController.view
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
