import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIHelper {

  static Future gotoScreen(BuildContext context, Widget toScreen, {bool ? clearPreviousStack}){
    if(clearPreviousStack==null  || clearPreviousStack==false){
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>toScreen));
    }
    else {
      return gotoScreenForced(context , toScreen);
    }
}

  static Future gotoScreenForced(BuildContext context, Widget toScreen) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => toScreen,
      ),
          (route) => false,
    );
  }
}