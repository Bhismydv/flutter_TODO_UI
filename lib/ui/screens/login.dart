import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/ui/screens/dashboard.dart';
import 'package:flutter_todo_ui/ui/screens/registration.dart';
import 'package:flutter_todo_ui/ui/widgets/app_rounded_text_field.dart';

import '../../styles/app_colors.dart';
import '../../utils/app_constants.dart';
import '../../utils/uihelper.dart';
import '../widgets/app_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset('assets/shape.png',fit: BoxFit.contain,),
                      Positioned(
                        top: 150,
                        child: Text(AppConstants.LOGIN_WELCOME,
                        style: TextStyle(color: AppColors.titleTextColor,
                            fontWeight: FontWeight.bold, fontSize: 18),),
                      ),
                      Positioned(
                        bottom: -100,
                          child: Image.asset('assets/login_boy.png',fit: BoxFit.contain,width: 200,)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 110,left: 50, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your email',
                            onChanged: (val){
                            }),
                        const SizedBox(height: 8,),
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your password',
                            onChanged: (val){
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(AppConstants.FORGOT,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.titleTextColor),),
                  const SizedBox(height: 10,),
                  AppButton(
                    width: MediaQuery.of(context).size.width-40,
                    onPressed: () {
                      UIHelper.gotoScreen(context, DashBoard());
                    },
                    label: AppConstants.LOGIN,
                    fitWidth: false,
                    bagColor: AppColors.titleTextColor,
                    txtColor: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppConstants.GOTO1,
                        style: TextStyle(fontSize: 14, color: AppColors.bodyTextColor),
                      ),
                      const SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          UIHelper.gotoScreen(context, Registration());
                        },
                        child: Text( AppConstants.GOTO_REG,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,color: AppColors.titleTextColor),),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          )),
    );
  }
}
