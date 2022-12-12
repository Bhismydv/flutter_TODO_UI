import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/styles/app_colors.dart';
import 'package:flutter_todo_ui/ui/widgets/app_button.dart';
import 'package:flutter_todo_ui/ui/widgets/app_rounded_text_field.dart';
import 'package:flutter_todo_ui/utils/app_constants.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20,top: 40),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  color: AppColors.titleTextColor,
                child: RichText(
                    text: TextSpan(
                      text: AppConstants.FEEDBACK+'\n\n',
                  style: TextStyle(color: AppColors.backgroundColor, fontSize: 18,fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(
                      text: AppConstants.FEEDBACK_INTRO,
                      style: TextStyle(color: AppColors.backgroundColor, fontSize: 16,fontWeight: FontWeight.normal),
                    )
                  ]
                )),),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(AppConstants.EXPERIENCE,
                       style: TextStyle(color: AppColors.titleTextColor, fontWeight: FontWeight.normal, fontSize: 18
                       ),),
                     const SizedBox(
                       height: 10,
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Icon(Icons.emoji_emotions),
                         const SizedBox(width: 20,),
                         Icon(Icons.emoji_emotions),
                         const SizedBox(width: 20,),
                         Icon(Icons.emoji_emotions),
                       ],
                     ),
                     const SizedBox(height: 20,),
                     AppRoundedTextField(onChanged: (String ) {  },
                       hintText: 'Describe your experience here...',
                       maxLines: 7,
                     ),
                     const SizedBox(height: 20,),
                     AppButton(
                       width: MediaQuery.of(context).size.width-40,
                       onPressed: () {
                        // UIHelper.gotoScreen(context, DashBoard());
                       },
                       label: AppConstants.SEND_FEEDBACK,
                       fitWidth: false,
                       bagColor: AppColors.titleTextColor,
                       txtColor: Colors.white,)
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
