import 'package:app_flutter_login/screens/login_screen/home/widgets/categary_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> containerGrow;
  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    //verifica o tamanho da tela altura e largura
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4, //altura vai ser de 30%
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bgScreen.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                  "Bem Vindo!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                width: containerGrow.value * 120,
                height: containerGrow.value * 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/user.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: containerGrow.value * 35,
                  height: containerGrow.value * 35,
                  margin: EdgeInsets.only(left: 80),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: containerGrow.value * 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(80, 210, 164, 1.0),
                  ),
                ),
              ),
              CategoryView(),
            ],
          ),
      ),
    );
  }
}
