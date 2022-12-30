import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:audioplayers/audioplayers.dart';

class CasetwoPage extends StatefulWidget {

  const CasetwoPage({Key? key}) : super(key: key);

  @override
  State<CasetwoPage> createState() => _CasetwoPageState();
}

class _CasetwoPageState extends State<CasetwoPage> {
  int score=0;
  List<int> rightAnswer=[3,2,3,1,1];
  List<int> userAnswer=[0,0,0,0,0];
  List<int> groupValue=[-1,-1,-1,-1,-1];
  //  int _lionValue =-1;
  //  int _giraffeValue =-1;
  // int _elpepValue =-1;

  void checkRadio(int groupValue,int value ) {
    setState(() {
      groupValue = value;
    });
  }
  bool _clicked = false;
  late Object elephant;
  late Object horse;
  late Object tiger;
  late Object dog;
  late Object ant;

  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");
    dog = Object(fileName: "asset/dog/model/dog.obj");
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");
    ant = Object(fileName: "asset/ant/model/ant.obj");



    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
          title: Text('Case 2'),
          //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height*0.03),
                    height: height*0.1,
                    width: width*0.8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFF5B00),
                        border: Border.all(color: Colors.white,width: 2)
                    ),

                    child:
                    Text('Choose the answer',style: TextStyle(color: Colors.white,fontSize: width*0.07,fontWeight: FontWeight.bold)
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(15),
                  //   height: height*0.15,
                  //   width: width,
                  //   decoration: BoxDecoration(
                  //       color: Color(0xffFFBF00),
                  //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  //       border: Border.all(color: Colors.black54,
                  //         width: 1,
                  //       )
                  //
                  //   ),
                  //   child: Container(
                  //     //margin: EdgeInsets.only(left: width*0.25),
                  //     height: height*0.07,
                  //     width: width*0.4,
                  //     alignment: Alignment.center,
                  //     decoration: BoxDecoration(
                  //       //color: Colors.amber,
                  //         borderRadius: BorderRadius.circular(30),
                  //         color: Colors.deepOrangeAccent,
                  //         border: Border.all(color: Colors.white,width: 2)
                  //     ),
                  //
                  //     child:
                  //     Text('Choose the answer',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                  //     ),
                  //   ),
                  //
                  // ),

                  Container(
                    height: height*0.45,
                    width: width,
                    //  color: Colors.blue,
                    child: Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(horse);
                        scene.camera.zoom = 10;
                      },
                    ),
                  ),
                  Container(
                    //color: Colors.green,
                    height: height*0.31,
                    width: width*0.95,
                    child: Column(
                      children: [
                        Text("(1) What does horse eat?",style: mcqteststyle(),),
                        Container(
                          padding: EdgeInsets.only(left: width*0.18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      //activeColor: Colors.deepOrange,
                                      value: 1,
                                      groupValue: groupValue[0],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[0]=value as int;
                                        });
                                        print(groupValue[0]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),
                                  Text("Choclate",style: mcqteststyletwo(),),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      value: 2,
                                      groupValue: groupValue[0],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[0]=value as int;
                                        });
                                        print(groupValue[0]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);
                                      }
                                  ),
                                  Text("Potato",style: mcqteststyletwo(),),

                                ],
                              ),

                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      value: 3,
                                      groupValue: groupValue[0],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[0]=value as int;
                                        });
                                        print(groupValue[0]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),
                                  Text("Grass",style: mcqteststyletwo(),),
                                ],
                              ),

                            ],
                          ),
                        ),



                        (userAnswer[0]!=0)?
                        Icon((userAnswer[0]==rightAnswer[0])?Icons.check_circle:Icons.cancel_outlined,color:Colors.deepOrange,size: 30, ):SizedBox(),
                      ],
                    ),
                  ),
                  Divider(color: Colors.deepOrange,height: 1,thickness:2,indent: 20,endIndent: 20),
                  Container(
                    height: height*0.45,
                    width: width,
                    // color: Colors.blue,
                    child: Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(elephant);
                        scene.camera.zoom = 10;
                      },
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.35,
                    width: width,
                    child: Column(
                      children: [
                        Text("(2) How many teeth does \n      an elephant have?",style: mcqteststyle(),),
                        Container(
                          padding: EdgeInsets.only(left: width*0.18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      value: 1,
                                      groupValue: groupValue[1],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[1]=value as int;
                                        });
                                        print(groupValue[1]);
                                        // checkRadio(groupValue[1], value as int);
                                        // print(groupValue[1]);

                                      }
                                  ),
                                  Text("14",style: mcqteststyletwo(),),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      value: 2,
                                      groupValue: groupValue[1],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[1]=value as int;
                                        });
                                        print(groupValue[1]);
                                        // checkRadio(_lionValue, value as int);
                                        // print(_lionValue);
                                      }
                                  ),

                                  Text("26",style: mcqteststyletwo(),),

                                ],
                              ),

                              Row(
                                children: [

                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                                      value: 3,
                                      groupValue: groupValue[1],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[1]=value as int;
                                        });
                                        print(groupValue[1]);
                                        // checkRadio(_lionValue, value as int);
                                        // print(_lionValue);

                                      }
                                  ),
                                  Text("18",style: mcqteststyletwo(),),
                                ],
                              ),

                            ],
                          ),
                        ),



                        (userAnswer[1]!=0)?
                        Icon((userAnswer[1]==rightAnswer[1])?Icons.check_circle:Icons.cancel_outlined,color:Colors.deepOrange,size: 30, ):SizedBox(),
                      ],
                    ),
                  ),
                  Divider(color: Colors.deepOrange,height: 1,thickness:2,indent: 20,endIndent: 20),

                  Container(
                    height: height*0.45,
                    width: width,
                    // color: Colors.blue,
                    child: Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(dog);
                        scene.camera.zoom = 10;
                      },
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.31,
                    width: width,
                    child: Column(
                      children: [
                        Text("(3) do dogs have tails?",style: mcqteststyle(),),
                        Container(
                          padding: EdgeInsets.only(left: width*0.18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 1,
                                      groupValue: groupValue[2],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[2]=value as int;
                                        });
                                        print(groupValue[2]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),

                                  Text("No",style: mcqteststyletwo(),),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 2,
                                      groupValue: groupValue[2],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[2]=value as int;
                                        });
                                        print(groupValue[2]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);
                                      }
                                  ),

                                  Text("Don't Know",style: mcqteststyletwo(),),

                                ],
                              ),

                              Row(
                                children: [

                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 3,
                                      groupValue: groupValue[2],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[2]=value as int;
                                        });
                                        print(groupValue[2]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),

                                  Text("Yes",style: mcqteststyletwo(),),
                                ],
                              ),

                            ],
                          ),
                        ),



                        (userAnswer[2]!=0)?
                        Icon((userAnswer[2]==rightAnswer[2])?Icons.check_circle:Icons.cancel_outlined,color:Colors.deepOrange,size: 30, ):SizedBox(),
                      ],
                    ),
                  ),
                  Divider(color: Colors.deepOrange,height: 1,thickness:2,indent: 20,endIndent: 20),

                  Container(
                    height: height*0.45,
                    width: width,
                    // color: Colors.blue,
                    child: Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(ant);
                        scene.camera.zoom = 10;
                      },
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.35,
                    width: width,
                    child: Column(
                      children: [
                        Text("(4) What is the colour of \n      ant?",style: mcqteststyle(),),
                        Container(
                          padding: EdgeInsets.only(left: width*0.18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),


                                      value: 1,
                                      groupValue: groupValue[3],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[3]=value as int;
                                        });
                                        print(groupValue[3]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),

                                  Text("Black, Red, Blue",style: mcqteststyletwo(),),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 2,
                                      groupValue: groupValue[3],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[3]=value as int;
                                        });
                                        print(groupValue[3]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);
                                      }
                                  ),
                                  Text("Green, Blue, Brown",style: mcqteststyletwo(),),

                                ],
                              ),

                              Row(
                                children: [

                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 3,
                                      groupValue: groupValue[3],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[3]=value as int;
                                        });
                                        print(groupValue[3]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),

                                  Text("Brown, Black, Yellow",style: mcqteststyletwo(),),
                                ],
                              ),

                            ],
                          ),
                        ),



                        (userAnswer[3]!=0)?
                        Icon((userAnswer[3]==rightAnswer[3])?Icons.check_circle:Icons.cancel_outlined,color:Colors.deepOrange,size: 30, ):SizedBox(),
                      ],
                    ),
                  ),
                  Divider(color: Colors.deepOrange,height: 1,thickness:2,indent: 20,endIndent: 20),

                  Container(
                    height: height*0.45,
                    width: width,
                    // color: Colors.blue,
                    child: Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(tiger);
                        scene.camera.zoom = 10;
                      },
                    ),
                  ),
                  Container(
                    //  color: Colors.green,
                    height: height*0.35,
                    width: width,
                    child: Column(
                      children: [
                        Text("(5) Which kind of \n       animal is a tiger?",style: mcqteststyle(),),
                        Container(
                          padding: EdgeInsets.only(left: width*0.18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor:
                                      MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 1,
                                      groupValue: groupValue[4],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[4]=value as int;
                                        });
                                        print(groupValue[4]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),

                                  Text("Cat",style: mcqteststyletwo(),),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio( fillColor:
                                  MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 2,
                                      groupValue: groupValue[4],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[4]=value as int;
                                        });
                                        print(groupValue[4]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);
                                      }
                                  ),


                                  Text("Deer",style: mcqteststyletwo(),),

                                ],
                              ),

                              Row(
                                children: [

                                  Radio( fillColor:
                                  MaterialStateColor.resolveWith((states) => Colors.deepOrange),

                                      value: 3,
                                      groupValue: groupValue[4],
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue[4]=value as int;
                                        });
                                        print(groupValue[4]);
                                        // checkRadio(groupValue[0], value as int);
                                        // print(groupValue[0]);

                                      }
                                  ),
                                  Text("Leopard",style: mcqteststyletwo(),),
                                ],
                              ),

                            ],
                          ),
                        ),



                        (userAnswer[4]!=0)?
                        Icon((userAnswer[4]==rightAnswer[4])?Icons.check_circle:Icons.cancel_outlined,color:Colors.deepOrange,size: 30, ):SizedBox(),
                      ],
                    ),
                  ),
                  Divider(color: Colors.deepOrange,height: 1,thickness:2,indent: 20,endIndent: 20),
                  SizedBox(height: height*0.02,),
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
                          setState(() {
                            score=0;
                            userAnswer[0]=groupValue[0];
                            userAnswer[1]=groupValue[1];
                            userAnswer[2]=groupValue[2];
                            userAnswer[3]=groupValue[3];
                            userAnswer[4]=groupValue[4];
                          });
                          if(groupValue[0]!=-1 && groupValue[0]==3){
                            setState(() {
                              score++;
                            });
                          }
                          if(groupValue[1]!=-1 && groupValue[1]==2){
                            setState(() {
                              score++;
                            });
                          }
                          if(groupValue[2]!=-1 && groupValue[2]==3) {
                            setState(() {
                              score++;
                            });
                          }
                          if(groupValue[3]!=-1 && groupValue[3]==1) {
                            setState(() {
                              score++;
                            });
                          }
                          if(groupValue[4]!=-1 && groupValue[4]==1) {
                            setState(() {
                              score++;
                            });
                          }                        },
                        child: Text('Show Results',style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: width*0.07,
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
                  SizedBox(height: height*0.02,),
                  Text(score.toString()+"/5",style: TextStyle(fontSize: width*0.1),),
                  SizedBox(height: height*0.02,),

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
                          setState(() {
                            userAnswer[0]=0;
                            userAnswer[1]=0;
                            userAnswer[2]=0;
                            userAnswer[3]=0;
                            userAnswer[4]=0;
                            score=0;
                            groupValue[0]=-1;
                            groupValue[1]=-1;
                            groupValue[2]=-1;
                            groupValue[3]=-1;
                            groupValue[4]=-1;
                          });
                        },
                        child: Text('Reset',style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: width*0.07,
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
            ],

          ),
        )
    ));
  }
}


TextStyle mcqteststyle(){
  return TextStyle(fontSize: 30,color:Colors.deepOrange ,fontWeight: FontWeight.bold);
}


TextStyle mcqteststyletwo(){
  return TextStyle(fontSize: 25,color:Colors.deepOrange );
}