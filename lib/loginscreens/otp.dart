import 'package:kids_education_app/homescreens/home.dart';
import 'package:kids_education_app/main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class otpPage extends StatefulWidget {
  const otpPage({Key? key}) : super(key: key);

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {

  static GlobalKey<FormState> formkey=new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final String requiredNumber = '1234';
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    void validate(){
      if (formkey.currentState!.validate()){
        //print('ok');
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));

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
                top: height*0.1,
                // left: width*0.1,
                //right: width*0.1,
                //bottom: height*0.1,
                child:Container(
                  padding: EdgeInsets.all(20),
                  // color: Colors.pink,
                  height: height,
                  width: width,
                  child: Column(
                    children: [
                      Text('Enter OTP',style: TextStyle(color:Color(0xffFF5B00),fontSize: 30,),),
                      SizedBox(height: height*0.04,),

                      Text("  An 4 Digit code has been sent \n          to +971 834777995 ",style: TextStyle(color: Colors.white,fontSize: 20,),),

                      Container(
                        margin: EdgeInsets.all(50),
                        child: PinCodeTextField(
                          length: 4,
                          textStyle: TextStyle(color: Colors.white),
                          appContext: context,
                          onChanged: (value){
                            print(value);
                          },
                          pinTheme: PinTheme(
                            selectedFillColor: Colors.white,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: height*0.08,
                            fieldWidth: width*0.12,
                            inactiveColor:Color(0xffFF5B00),
                            activeColor: Colors.red,
                            selectedColor: Colors.red,

                          ),
                          onCompleted: (value){
                            if(value == requiredNumber){
                              print('valid pin');
                            } else {
                              print('invalid pin');
                            }
                          },
                        ), // end Padding()
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                          height: height*0.075,
                          width: width*0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                              color: Colors.white,
                              width: width*0.008,
                              style: BorderStyle.solid,

                            ),
                          ),
                          // color: Colors.green,
                          child:ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LogPage(),));
                            },
                            child: Text('Sign Up',style: TextStyle(
                              // fontWeight: FontWeight.bold,
                                fontSize: 20,
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

                      Text('Re'),

                    ],
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
