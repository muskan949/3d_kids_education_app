import 'package:flutter/material.dart';
import 'package:kids_education_app/loginscreens/otp.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {

  static GlobalKey<FormState> formkey=new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    void validate(){
      if (formkey.currentState!.validate()){
        //print('ok');
         Navigator.push(context, MaterialPageRoute(builder: (context) => otpPage(),));

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
                child:Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
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
                  padding: EdgeInsets.all(width*0.02),
                  // color: Colors.pink,
                  height: height,
                  width: width,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: height*0.15),
                            child: Center(child: Text('Forgot Password',style: TextStyle(color: Colors.white,fontSize: width*0.07,fontWeight: FontWeight.bold,),))),
                        SizedBox(height: height*0.04,),
                        Padding(
                          padding: EdgeInsets.all(width*0.04),
                          child: TextFormField(
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
                        ),
                        SizedBox(height: height*0.07,),
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
                              //  Navigator.push(context, MaterialPageRoute(builder: (context) => otpPage(),));
                             validate();
                              },
                              child: Text('Send Email',style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                  fontSize: width*0.06,
                                  letterSpacing: width*0.002
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
                        SizedBox(height: height*0.2,),
                        Container(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? ",style: TextStyle(color: Colors.white,letterSpacing: width*0.001),),
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text('Login!',style: TextStyle(
                                color: Color(0xffFF5B00),
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
      width: 1,
    ),
  );
}
