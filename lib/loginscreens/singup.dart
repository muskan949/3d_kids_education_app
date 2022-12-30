import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:kids_education_app/homescreens/home.dart';
import 'package:kids_education_app/main.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? _chosenValue;
  bool _isObscure = true;
  bool value = false;
  get number => null;
  final countryPicker= const FlCountryCodePicker();
  CountryCode? countryCode;
  static GlobalKey<FormState> formkey=new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    void validate(){
      if (formkey.currentState!.validate()){
        print('ok');
        Navigator.push(context, MaterialPageRoute(builder: (context) => LogPage(),));

      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('login failed'),));

      }
    }
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
                // top: height*0.001,
                // left: width*0.2,
                // right: width*0.2,
                //bottom: height*0.01,
                child:Container(
                  height: height,
                  width: width,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      //borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('asset/images/bgimage4.jpg'),fit: BoxFit.fill)
                  ),

                  // child: Image(image: AssetImage('assets/pic1.jpeg'),

                  // ),
                ),
              ),
              Positioned(
                top: height*0.05,
                child:Container(
                  padding: EdgeInsets.all(20),
                 // color: Colors.pink,
                  height: height,
                  width: width,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Text('SIGNUP',style: TextStyle(color: Colors.white,fontSize: width*0.08),),
                        SizedBox(height: height*0.02,),
                        TextFormField(
                          maxLines: 1,
                          style: TextStyle(
                            //color: Colors.black
                          ),
                          decoration: InputDecoration(
                            //fillColor: Colors.white,
                            hintText: 'Enter Name',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.person,color: Colors.black),
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
                          style: TextStyle(
                            //color: Colors.black
                          ),
                          decoration: InputDecoration(
                            //fillColor: Colors.white,
                            hintText: 'Enter Email',
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
                            else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(val)) {
                              return "Please enter a valid email address";
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
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                final code= await countryPicker.showPicker(context: context);
                                setState(() {
                                  countryCode=code;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: width*0.06),
                                width:width*0.2,
                                // color: Colors.blue,
                                child: Row(
                                  children: [
                                    Container(

                                      //color: Colors.blue,
                                      child: countryCode!=null?countryCode!.flagImage:Text('     '),
                                    ),
                                    Container(
                                      height: height*0.07,
                                      //width:width*0.27,
                                    //  color: Colors.green,
                                      child: Center(child: Text(countryCode?.dialCode??"+971",style: TextStyle(fontSize: width*0.04,color: Colors.white,fontWeight: FontWeight.bold),)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*0.03),
                              height: height*0.06,
                              width: width*0.58,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                maxLines: 1,
                                style: TextStyle(
                                  //color: Colors.black
                                ),
                                decoration: InputDecoration(
                                  //fillColor: Colors.white,
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(color: Colors.black87),
                                  contentPadding: EdgeInsets.only(left: 30),
                                  border:myinputborder(),
                                  enabledBorder: myinputborder(),
                                  // OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.white,width: 3),
                                  //     borderRadius: BorderRadius.circular(30),),
                                ),
                                // validator:(val){
                                //   if(val!.isEmpty){
                                //     return'required';
                                //   }
                                //   else{
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
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
                            else if (val.length>8){
                              return'Password must be less than 8 words ';
                            }
                            else{
                              return null;
                            }
                          },
                          // onChanged: (value) {
                          //   // do something
                          // },
                        ),

                        SizedBox(height: height*0.04,),
                        Container(
                          padding: EdgeInsets.only(left: width*0.11),
                          height: height*0.07,
                          width: width*0.9,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color:Color(0xffFF5B00),
                                width: width*0.005,
                                style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: DropdownButton<String>(

                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black),

                            items: <String>[
                              'Teacher',
                              'Student',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Select Category                                         ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: width*0.04,
                                  ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },

                          ),

                        ),
                        SizedBox(height: height*0.05,),
                        Container(
                            height: height*0.075,
                            width: width*0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                color: Colors.white,
                                width: width*0.007,
                                style: BorderStyle.solid,

                              ),
                            ),
                            // color: Colors.green,
                            child:ElevatedButton(
                              onPressed: () {
                                //Navigator.push(context, MaterialPageRoute(builder:(context) =>HomePage(),));
                                validate();
                              },
                              child: Text('Continue',style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                  fontSize: width*0.065,
                                  letterSpacing: 1
                              ),),
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                elevation: 15,
                                primary:Color(0xffFF5B00),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  // <-- Radius
                                ),

                              ),
                            )),
                        SizedBox(height: height*0.01,),
                        Container(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? ",style: TextStyle(color: Colors.white,letterSpacing: 1),),
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text('Login!',style: TextStyle(
                                color:Color(0xffFF5B00),
                              ),))
                            ],
                          ),
                        ),

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
      width: 2,
    ),
  );
}
