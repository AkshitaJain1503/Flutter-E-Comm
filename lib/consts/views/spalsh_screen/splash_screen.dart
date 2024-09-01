import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/views/auth_screen/login_screen.dart';
import 'package:emart_app/consts/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenCreate();

}

class _SplashScreenCreate extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>LoginScreen());
    });
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,
            child: Image.asset(icSplashBg,width:300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            //appversion.text.white.make(),
            Spacer(),  // FOR RESPONSIVE
            //credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            //SPLASH SCREEN UI IS CREATED
          ],
        ),
        )
    );
  }
}