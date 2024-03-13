import 'package:flutter/material.dart';

import 'checker.dart';

class main_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _main_screen();
  }

}

class _main_screen extends State<main_screen>{
  final _textcontroller=TextEditingController();
  checker m=new checker();
  String password_info="";

   pass_checker(){
     String check_result=_textcontroller.text;
     String ouput="";
  if(check_result.isNotEmpty){
    if (check_result.length<8||!m.hasUpperCase(check_result)||!m.hasLowercase(check_result)||!m.hasSpecialCharacters(check_result)||!m.hasNumbers(check_result)) {
      ouput="The password must contain:";
      if(check_result.length<8){
        ouput="$ouput\nMinimum 8 characters";
      }
      if(!m.hasUpperCase(check_result)){
        ouput="$ouput\nA Uppercase characters";
      }
      if(!m.hasLowercase(check_result)){
        ouput="$ouput\nA Lowercase characters";
      }
      if(!m.hasSpecialCharacters(check_result)){
        ouput="$ouput\nA Special characters";
      }
      if(!m.hasNumbers(check_result)){
        ouput="$ouput\nA Numbers characters";
      }
    }
    else {
      ouput="Your Password is Secure";
    }
  }
  else{
    ouput="Enter a Password to Check its Strength";
  }
     setState(() {
       password_info=ouput;
     });
  }
  @override
  Widget build( context) {
  return(
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding:  const EdgeInsets.only(left: 40,right: 40,bottom: 20),
        child: TextField(
          controller: _textcontroller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter Password here",
          ),

        ),
      ),
      ElevatedButton(onPressed: pass_checker, child: const Text("Check")),
     const SizedBox(height: 20,),
     Text(password_info),
    ],
  )
  );
  }

}