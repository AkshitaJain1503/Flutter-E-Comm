import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/consts/widgets_common/custom_textField.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:get/route_manager.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState(); }

 
class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;  

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
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,

              Column(
                children: [
                  customTextField(title: name, hint: nameHime),
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),
                  customTextField(title: retypePass, hint: passwordHint),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.color(blue).make())),

                    Row(children: [
                      Checkbox(
                        checkColor: redColor,
                        value: isCheck, 
                        onChanged: (newValue){
                          setState(() {
                            isCheck = newValue;
                          });
                          
                        },
                        
                      ),
                    ],
                  ),
                  10.widthBox,
            
                   RichText(text: const TextSpan(
                    children: [
                      TextSpan(text: "I agree to the ", style: TextStyle(
                        fontFamily:regular,
                        color: fontGrey,
                      )),

                      TextSpan(text: "$termAndCond & $privacyPolicy", style: TextStyle(
                        fontFamily:regular,
                        color: redColor,
                      )),
                      
                    ]
                  )),

                    5.heightBox,
                    ourButton(color: isCheck==true? redColor:lightGrey, textColor: whiteColor, title: signup, onPress: (){}).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text : alreadyHaveAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey)
                        ),

                        TextSpan(
                          text : login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor)
                        ),
                      ],
                    ),
                  ).onTap((){
                    Get.back();
                  }),
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
            ],
          ),
        ),

      ));
  }
}