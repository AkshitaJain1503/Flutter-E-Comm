import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/consts/widgets_common/custom_textField.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
      return bgWidget(
        child : Scaffold(
          resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox, //RESPONSIVE 10% of height of screen
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,

              Column(
                children: [
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.color(blue).make())),
                    5.heightBox,
                    //ourButton().box.width(context.screenWidth-50).make(),
                    ourButton(color: redColor, textColor: whiteColor, title: login, onPress: (){
                      Get.to(()=>const Home());
                    }).box.width(context.screenWidth-50).make(),

                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),

                    5.heightBox,
                    ourButton(color: lightGolden, textColor: redColor, title: signup, onPress: (){
                      Get.to(()=>const SignupScreen());
                    }).box.width(context.screenWidth-50).make(),

                    10.heightBox,
                    loginWith.text.color(fontGrey).make(),
                    5.heightBox,

                    Align(
                      alignment:Alignment.center ,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: lightGrey,
                        child : Image.asset(icGoogleLogo),
                        )
                    ),

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
            ],
          ),
        ),

      ));
  }
}