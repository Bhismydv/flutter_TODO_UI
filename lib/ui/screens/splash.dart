import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/styles/app_colors.dart';
import 'package:flutter_todo_ui/ui/screens/registration.dart';
import 'package:flutter_todo_ui/ui/widgets/app_button.dart';
import 'package:flutter_todo_ui/utils/app_constants.dart';
import 'package:flutter_todo_ui/utils/uihelper.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Stack(
                 alignment: Alignment.bottomCenter,
                 clipBehavior: Clip.none,
                 children: [
                   Image.asset('assets/shape.png'),
                   Positioned(
                       top: 180,
                       child: Image.asset('assets/splash_girl.png')),
                 ],
               ),
               const SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                        text: AppConstants.SPLASH_HEADING+'\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.titleTextColor),
                        children: [
                          TextSpan(
                            text: AppConstants.SPLASH_INTRO,
                            style: TextStyle(fontSize: 14, color: AppColors.bodyTextColor),
                          )
                        ]
                      )),

                    ],
                  ),
                ),
                AppButton(
                  width: MediaQuery.of(context).size.width-40,
                  onPressed: () {
                    UIHelper.gotoScreen(context, Registration());
                  },
                  label: AppConstants.GET_STARTED,
                  fitWidth: false,
                  bagColor: AppColors.titleTextColor,
                  txtColor: Colors.white,
                ),
              ],
            ),
          )),
    );
  }
}
