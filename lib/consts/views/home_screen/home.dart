import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/views/auth_screen/signup_screen.dart';
import 'package:emart_app/consts/views/cart_screen/cart_screen.dart';
import 'package:emart_app/consts/views/category_screen/category_screen.dart';
import 'package:emart_app/consts/views/home_screen/home_screen.dart';
import 'package:emart_app/consts/views/profile_screen/profile_screen.dart';
import 'package:emart_app/consts/widgets_common/applogo_widget.dart';
import 'package:emart_app/consts/widgets_common/bg_widget.dart';
import 'package:emart_app/consts/widgets_common/custom_textField.dart';
import 'package:emart_app/consts/widgets_common/our_button.dart';
import 'package:emart_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    var controller = Get.put(HomeController());
    
    var navBarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(), 
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(children: [Obx(()=>Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),],),
      
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
        items: navBarItem,
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: redColor,
        selectedLabelStyle: TextStyle(fontFamily: semibold),
        onTap: (value){
          controller.currentNavIndex.value = value;
        },
        ),
    ));
  }
}       