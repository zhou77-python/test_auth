import 'package:flutter/material.dart';
import 'package:test_auth/screens/signup_screen.dart';
import 'package:test_auth/themes/theme.dart';
import 'package:test_auth/widgets/custom_scaffold.dart';
import 'package:test_auth/widgets/welcome_button.dart';
import 'package:test_auth/screens/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      child: Column(children: [
        Flexible(child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 40.0,
          ),
          child: Center(
            child:RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    children:[
                      TextSpan(
                          text: '\n\n\nBIENVENUE SUR GOKHCONNECT \n',
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                      TextSpan(
                          text: '\n identifier vous dabord pour avoir acces ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:20)
                      )
                    ]
                )
            ),),
        )),
        Flexible(
          flex: 1,
          child:Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                const Expanded(child: WelcomeButton(
                  buttonText: 'Connexion ',
                  onTap: SigninScreen(),
                  color: Colors.transparent,
                  textColor: Colors.white,
                ))
                ,
                Expanded(child: WelcomeButton(
                  buttonText: 'Inscription ',
                  onTap: const SignupScreen(),
                  color:Colors.white,
                  textColor: lightColorScheme.primary,
                )),
              ],
            ),
          ),)
      ],
      ),
    );
  }
}