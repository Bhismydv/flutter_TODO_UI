import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/ui/screens/feedback.dart';
import 'package:flutter_todo_ui/utils/uihelper.dart';

import '../../styles/app_colors.dart';
import '../../utils/app_constants.dart';
import '../widgets/app_rounded_text_field.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool check=false;
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
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width,
                        height: 230,
                        color: AppColors.dashboardbg,
                      ),
                      Image.asset('assets/shape.png',fit: BoxFit.contain,),
                      Positioned(
                          bottom: 120,
                          child: Image.asset('assets/dp.png')),
                      Positioned(
                        bottom: 80,
                        child: Text('Welcome Bruce Venn',
                          style: TextStyle(color: AppColors.titleTextColor,
                              fontWeight: FontWeight.bold, fontSize: 18),),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Evening',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.bodyTextColor),),
                      const SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                            'assets/clock_todo.png',width: 80,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Todo List',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.bodyTextColor),),
                          GestureDetector(
                            onTap: (){
                              UIHelper.gotoScreen(context, FeedBack());
                            },
                            child: Text('feedback',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 14, color: Colors.black26),),
                          ),

                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.dashboardbg
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppConstants.LIST,
                                  style: TextStyle(fontSize: 14, color: AppColors.bodyTextColor),),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColors.titleTextColor
                                    ),
                                    child: GestureDetector(
                                        onTap: (){
                                          onEditLocation();
                                        },
                                        child: Icon(Icons.add, color: AppColors.dashboardbg,))),
                              ],
                            ),
                            const SizedBox(height: 5,),
                             ListView.separated(
                      shrinkWrap: true,
                       separatorBuilder: (context, index){
                         return const SizedBox(height: 0,);
                       }, itemCount: 2,
                    itemBuilder:(context, index){
                         return getList();
            }),
                          ],
                        ),
                      ),
                    ],
                  ),),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          )),
    );
  }

  Widget getList(){
    return Row(
              children: [
                Checkbox(value: check, onChanged: (check){
                 setState(() {
                   check = true;
                 });
                }),
                SizedBox(width: 2,),
                Text('java'),
              ],
            );
  }

  Future onEditLocation(){
    return showDialog(context: context, builder: (dContaxt){
      return WillPopScope(onWillPop: () async{
        return true;
      },
        child: AlertDialog(
          actionsPadding: EdgeInsets.only(bottom: 20),
          titlePadding: EdgeInsets.only(top: 20, left: 20),
          actionsAlignment: MainAxisAlignment.center,
          title: Text('Add Task'),
          content: AppRoundedTextField(
              validator: (value) {
                if (value == '') {
                  return 'Please enter the email/username/mobile';
                }
                return null;
              },
              textInputType: TextInputType.text,
              hintText: '',
              onChanged: (val) {
               // zipcode = val;
              }
          ),
          actions: [
            GestureDetector(
              onTap: (){
              },
              child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width/3 ,
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.backgroundColor,
                        width: 0.5
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 18,color: AppColors.titleTextColor, fontWeight: FontWeight.w600),
                  )
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width/3 ,
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  decoration: BoxDecoration(
                    color: AppColors.titleTextColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child:  Text(
                    'Save',
                    style: TextStyle(fontSize: 18,color: AppColors.backgroundColor, fontWeight: FontWeight.w600),
                  )
              ),
            ),
          ],
        ),);
    });
  }


}
