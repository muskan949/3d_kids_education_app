import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_education_app/homescreens/home.dart';
import 'package:kids_education_app/testcases/casefour.dart';
import 'package:kids_education_app/testcases/caseone.dart';
import 'package:kids_education_app/testcases/casethree.dart';
import 'package:kids_education_app/testcases/casetwo.dart';



class TestLevelOnePage extends StatefulWidget {
  const TestLevelOnePage({Key? key}) : super(key: key);

  @override
  State<TestLevelOnePage> createState() => _TestLevelOnePageState();
}

class _TestLevelOnePageState extends State<TestLevelOnePage> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            automaticallyImplyLeading: false,
            title: Text('     Test levels',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

        ),
        body: Container(
          height: height,
          width: width,
          color: Color(0xffFFBF00),
          child: ListView(
            children: [
              Column(
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
                                  image: AssetImage('asset/images/bgimage7.jpg'),
                                  fit: BoxFit.cover)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(child:Text('Learn New Things',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),

                  SizedBox(height: height*0.04,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CaseOnePage(),));
                        },
                        child: Text('Case 1',style: TextStyle(
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

                  SizedBox(height: height*0.04,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CasetwoPage(),));
                        },
                        child: Text('Case 2',style: TextStyle(
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
                  SizedBox(height: height*0.04,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CaseThreePage(),));
                        },
                        child: Text('Case 3',style: TextStyle(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CaseFourPage(),));
                        },
                        child: Text('Case 4',style: TextStyle(
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
                      width: width*0.25,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage(),));
                        },
                        child: Icon(Icons.home_outlined,size: width*0.1,),
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
                 // SizedBox(height: height*0.03,),
                  // Container(
                  //   height: height*0.1,
                  //   width: width*0.3,
                  //   color: Colors.blue,
                  //  // padding:EdgeInsets.only(right: width*0.05),
                  //     child: IconButton(onPressed: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  //     }, icon: Icon(Icons.home_outlined,color: Colors.white,size: width*0.15,)),
                  //
                  // )

                ],
              ),
            ],

          ),
        )
    ));
  }
}
