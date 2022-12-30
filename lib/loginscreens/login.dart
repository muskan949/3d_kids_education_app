import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/home.dart';
import 'package:kids_education_app/loginscreens/forgotpass.dart';
import 'package:kids_education_app/loginscreens/singup.dart';
import 'package:kids_education_app/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool value = false;
  final GlobalKey<FormState> formkey= GlobalKey<FormState>();
  String? email;
  String? password;
  void validate(){
    if (formkey.currentState!.validate()){

      Navigator.push(context, MaterialPageRoute(builder: (context) => LogPage(),));

    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('login failed'),));

    }
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:
        Container(
          height: height,
          width: width,
          //color: Color(0xffff5722),
          child: Stack(
            children: [
              Positioned(
                child:Container(
                  height: height,
                  width: width,
       decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.grey,width: width*0.001),
                      //borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('asset/images/bgimage4.jpg'),fit: BoxFit.fill)
                  ),

                  // child: Image(image: AssetImage('assets/pic1.jpeg'),

                  // ),
                ),
              ),
              Positioned(
                top: height*0.1,
                // left: width*0.1,
                // right: width*0.1,
                //bottom: height*0.1,
                child:Container(padding: EdgeInsets.fromLTRB(width*0.05, height*0.05, width*0.05, height*0.05),
                  height: height,
                  width: width,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(height: height*0.05,),
                        Container(height: height*0.05,
                        //width: width*0.4,
                       // color: Colors.blue,
                        child:Text('Welcome!',style: TextStyle(fontSize: width*0.08,color: Colors.white),)),
                        SizedBox(height: height*0.015,),
                        Container(
                            height: height*0.05,
                            //width: width*0.4,
                          //  color: Colors.blue,
                            child:Text('Login to start the adventure',style: TextStyle(fontSize: width*0.05,color: Colors.white,),)),
                        SizedBox(height: height*0.02,),
                        TextFormField(
                          maxLines: 1,
                          style: TextStyle(
                            //color: Colors.black
                          ),
                          decoration: InputDecoration(
                            //fillColor: Colors.white,
                            hintText: 'Email',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.black),
                            hintStyle: TextStyle(color: Colors.black87),
                            contentPadding: EdgeInsets.only(left: 30),
                            border:myinputborder(),
                            enabledBorder: myinputborder(),
                            // OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.white,width: 3),
                            //     borderRadius: BorderRadius.circular(30),),
                          ),

                          validator:(val){
                            if(val!.isEmpty){
                              return'required';
                            }
                            else{
                              return null;
                            }
                          },
                          // onChanged: (val) {
                          //
                          // },
                        ),
                        SizedBox(height: height*0.04,),
                        TextFormField(
                          maxLines: 1,
                          obscureText:_isObscure,
                          style: TextStyle(
                            //color: Colors.black
                          ),

                          decoration: InputDecoration(
                            //fillColor: Colors.white,
                            // hintText: '●●●●●●',
                            hintText: 'Enter Password',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.lock,color: Colors.black),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _isObscure=!_isObscure;
                                });
                              },
                              icon: Icon(_isObscure?Icons.visibility:Icons.visibility_off),
                            ),
                            hintStyle: TextStyle(color:
                            Colors.black87,
                              // Colors.grey,
                            ),
                            contentPadding: EdgeInsets.only(left: 30),
                            border:myinputborder(),
                            enabledBorder: myinputborder(),
                            // OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.white,width: 3),
                            //     borderRadius: BorderRadius.circular(30),),
                          ),
                          validator:(val){
                            if(val!.isEmpty){
                              return'required';
                            }
                            // else if (val.length>8){
                            //   return'Password must be less than 8 words ';
                            // }
                            else{
                              return null;
                            }
                          },
                          // onChanged: (value) {
                          //   // do something
                          // },
                        ),
                        SizedBox(height: height*0.05,),
                        Container(
                            height: height*0.075,
                            width: width*0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(width*0.2)),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                                style: BorderStyle.solid,

                              ),
                            ),
                            // color: Colors.green,
                            child:ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder:(context) => LogPage(),));
                                validate();
                              },
                              child: Text('LOGIN',style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                  fontSize:width*0.05,
                                  letterSpacing:width*0.002
                              ),),
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                elevation: width*0.03,
                                primary:Color(0xffFF5B00),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(width*0.1),
                                  // <-- Radius
                                ),

                              ),
                            )),
                        SizedBox(height: height*0.01,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: this.value,
                                  side: BorderSide(
                                    color: Colors.white, //your desire colour here
                                    width: 1.5,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = value!;
                                    });
                                  },
                                ),
                                Text('Remember Me',style: TextStyle(color: Colors.white),),
                              ],
                            ),

                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context) => ForgotPassPage(),));

                            }, child: Text('Forgot password?',style: TextStyle(fontSize: width*0.04),))
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Color(0xffFF5B00),
                                indent: 20.0,
                                endIndent: 10.0,
                                thickness: 1,
                              ),
                            ),
                            Text(
                              "or login with",
                              style: TextStyle(color: Colors.white,fontSize: 15),
                            ),
                            Expanded(
                              child: Divider(
                                color:Color(0xffFF5B00),
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height*0.005,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: width*0.03),
                                height: height*0.055,
                              //  width: width*0.31,
                                child:ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset('asset/images/fb.png',
                                        height:height*0.06,
                                        width: width*0.055,),
                                      Text('  facebook',style: TextStyle(
                                          fontSize: width*0.04,
                                          color: Colors.white
                                      ),),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 15,
                                    primary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(width*0.03), // <-- Radius
                                    ),

                                  ),
                                )),
                            Container(margin: EdgeInsets.only(left: width*0.03),
                                height: height*0.055,
                               // width: width*0.31,
                                child:ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset('asset/images/google.png',
                                        height:height*0.06,
                                        width: width*0.055,),
                                      Text('   Google',style: TextStyle(
                                          fontSize: width*0.04,
                                          color: Colors.white
                                      ),),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 15,
                                    primary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(width*0.03), // <-- Radius
                                    ),

                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: height*0.015,),
                        Container(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account? ",style: TextStyle(color: Colors.white,letterSpacing: width*0.001),),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => SignupPage(),));
                              }, child: Text('Register!',style: TextStyle(
                                color: Color(0xffFF5B00),
                              ),))
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.02,)

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}


OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
  return OutlineInputBorder( //Outline border type for TextFeild
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color:Color(0xffFF5B00),
      width: 1,
    ),
  );
}

