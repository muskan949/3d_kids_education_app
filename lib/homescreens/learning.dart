import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/alphabet.dart';
import 'package:kids_education_app/homescreens/animalidentification.dart';
import 'package:kids_education_app/homescreens/color.dart';
import 'package:kids_education_app/model.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({Key? key}) : super(key: key);

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            title: Text('Learning',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
          height: height,
          width: width,
          color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                height: height*0.3,
                width: width,
                color: Color(0xffFFBF00),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.3,
                      width: width*0.4,
                      //  color: Colors.lightGreenAccent,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white, width: 2
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/images/bgimage6.jpg'),
                              fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              ),
              Container(child:Text('Learn New Things',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),

              SizedBox(height: height*0.07,),
              Container(
                  height: height*0.08,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                      style: BorderStyle.solid,

                    ),
                  ),
                  // color: Colors.green,
                  child:ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlphabetsPage(),));
                    },
                    child: Text('Alphabetical Wise',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: width*0.06,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold
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

              SizedBox(height: height*0.05,),
              Container(
                  height: height*0.08,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                      style: BorderStyle.solid,

                    ),
                  ),
                  // color: Colors.green,
                  child:ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalIdentifyPage(),));
                    },
                    child: Text('Identify The Animal',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: width*0.06,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold
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
              SizedBox(height: height*0.05,),
              Container(
                  height: height*0.08,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                      style: BorderStyle.solid,

                    ),
                  ),
                  // color: Colors.green,
                  child:ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ColoringScreen(),));
                    },
                    child: Text('Coloring',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: width*0.06,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold
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

            ],
          ),
        )
    ));
  }
}
