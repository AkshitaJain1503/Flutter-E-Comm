import 'package:emart_app/views/spalsh_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'consts/consts.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb){
  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyB_uL03tsiHmGT2xZH6ORkxaAykeuUSeik",
  authDomain: "mc-final-7398e.firebaseapp.com",
  projectId: "mc-final-7398e",
  storageBucket: "mc-final-7398e.appspot.com",
  messagingSenderId: "1011877175529",
  appId: "1:1011877175529:web:0fd2af3cb234cf22bd9078"));}
  else{
    await Firebase.initializeApp();
  }
  // Firebase.initializeApp.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyB_uL03tsiHmGT2xZH6ORkxaAykeuUSeik",
  // authDomain: "mc-final-7398e.firebaseapp.com",
  // projectId: "mc-final-7398e",
  // storageBucket: "mc-final-7398e.appspot.com",
  // messagingSenderId: "1011877175529",
  // appId: "1:1011877175529:web:0fd2af3cb234cf22bd9078"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(

          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
        
          elevation: 0.0,
          backgroundColor: Colors.transparent
        ),
        fontFamily: regular
      ),
      home: const SplashScreen(),
    );
  }
}
