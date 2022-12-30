import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/color.dart';
import 'package:kids_education_app/drawing.dart';
import 'package:kids_education_app/homescreens/alphabet3dscreen.dart';
import 'package:kids_education_app/homescreens/arkit.dart';
import 'package:kids_education_app/homescreens/home.dart';
import 'package:kids_education_app/homescreens/showscore.dart';
import 'loginscreens/login.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,

    // home:LoginPage(),
    home: LogPage(),
    // home:ShowScorePage(),
    //home:MyHomePage(),
  //  home:DrawingBoard(),
    //home:HomePage(),
   // home:HomePageeee(),
   // home:ARkit(title: 'Flutter AR',),
  ));
}

class LogPage extends StatefulWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
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
                     // border: Border.all(color: Colors.grey,width: width*0.001),
                      //borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('asset/images/bgimage.jpg'),fit: BoxFit.fill)
                  ),


                ),
              ),
              Positioned(
                top: height*0.03,
                left: width*0.1,
                right: width*0.1,
                //bottom: height*0.1,
                child:Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: width*0.6),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));

                      }, icon: Icon(Icons.power_settings_new,size: width*0.1,color: Colors.white,)),
                    ),
                    SizedBox(height: height*0.02,),
                    Container(
                      height: height * 0.3,
                      width: width*0.4,
                      //  color: Colors.lightGreenAccent,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.greenAccent, width: width*0.005),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/images/logimage.jpg'),
                              fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(height: height*0.01,),
                    Container(
                        height: height*0.05,
                        //width: width*0.4,
                        //  color: Colors.blue,
                        child:Text('Learning App',style: TextStyle(fontSize: width*0.07,color: Colors.white,fontWeight: FontWeight.bold),)),
                    SizedBox(height: height*0.05,),
                    Container(
                        height: height*0.075,
                        width: width*0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(width*0.2)),
                          border: Border.all(
                            color: Colors.white,
                            width: width*0.01,
                            style: BorderStyle.solid,

                          ),
                        ),
                        // color: Colors.green,
                        child:ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
                          },
                          child: Text('ENROLL AS STUDENT',style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: width*0.05,
                            //  letterSpacing: width*0.001
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
                    SizedBox(height: height*0.03,),
                    Container(
                        height: height*0.075,
                        width: width*0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(width*0.2)),
                          border: Border.all(
                            color: Colors.white,
                            width: width*0.01,
                            style: BorderStyle.solid,

                          ),
                        ),
                        // color: Colors.green,
                        child:ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => ShowScorePage(),));
                          },
                          child: Text('ENROLL AS TEACHER',style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: width*0.05,
                             // letterSpacing: width*0.001
                          ),),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: width*0.03,
                            primary:Color(0xffFF5B00),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              // <-- Radius
                            ),

                          ),
                        )),

                      ],
                    ),

              ),
                  ],
                ),
              ),


          ),
        );


  }
}

