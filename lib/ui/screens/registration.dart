import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/ui/screens/login.dart';
import 'package:flutter_todo_ui/ui/widgets/app_rounded_text_field.dart';
import 'package:flutter_todo_ui/utils/uihelper.dart';

import '../../styles/app_colors.dart';
import '../../utils/app_constants.dart';
import '../widgets/app_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/shape.png',fit: BoxFit.contain,),
                      Text(AppConstants.WELCOME_REGISTER,
                      style: TextStyle(color: AppColors.titleTextColor,
                          fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your name',
                            onChanged: (val){
                            }),
                        const SizedBox(height: 8,),
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your email',
                            onChanged: (val){
                            }),
                        const SizedBox(height: 8,),
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your number',
                            onChanged: (val){
                            }),
                        const SizedBox(height: 8,),
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Enter your password',
                            onChanged: (val){
                            }),
                        const SizedBox(height: 8,),
                        AppRoundedTextField(
                            radius: 50,
                            hintText: 'Confirm password',
                            onChanged: (val){
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  AppButton(
                    width: MediaQuery.of(context).size.width-40,
                    onPressed: () {  },
                    label: AppConstants.REGISTER,
                    fitWidth: false,
                    bagColor: AppColors.titleTextColor,
                    txtColor: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppConstants.GOTO,
                        style: TextStyle(fontSize: 14, color: AppColors.bodyTextColor),
                      ),
                      const SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          UIHelper.gotoScreen(context, Login());
                        },
                        child: Text( AppConstants.GOTO_LOGIN,
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
