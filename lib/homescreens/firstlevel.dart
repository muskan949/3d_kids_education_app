import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:kids_education_app/testcases/testlevel.dart';

class StartlevelPage extends StatefulWidget {
  String? btnname;
  StartlevelPage({Key? key,this.btnname}) : super(key: key);

  @override
  State<StartlevelPage> createState() => _StartlevelPageState();
}

class _StartlevelPageState extends State<StartlevelPage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
       appBar: AppBar(backgroundColor: Color(0xffFFBF00),
       title: Text('Level  1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LearningPage(),));
                    },
                    child: Text('Learning',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: 25,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TestLevelOnePage(),));
                    },
                    child: Text('Start Test',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: 25,
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
