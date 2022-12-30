import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:kids_education_app/testcases/testlevel.dart';

class CaseFourPage extends StatefulWidget {

  const CaseFourPage({Key? key}) : super(key: key);

  @override
  State<CaseFourPage> createState() => _CaseFourPageState();
}

class _CaseFourPageState extends State<CaseFourPage> {
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
          title: Text('Case 4'),
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
                    Text('Select the moving objects',style: TextStyle(color: Colors.white,fontSize: width*0.06,fontWeight: FontWeight.bold)
                    ),
                  ),

                  Container(

                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          //width: width*0.3,
                            //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(horse);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                         // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/cowpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                        SizedBox(height: height*0.1,),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/kangaroopic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.green,
                    height: height*0.35,
                    width: width*0.9,
                    child: Column(
                      children: [
                        Text("(1) Which animal can move?",style: mcqteststyle(),),
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
                                  Text("Kangaroo",style: mcqteststyletwo(),),
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
                                  Text("Cow",style: mcqteststyletwo(),),

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
                                  Text("Horse",style: mcqteststyletwo(),),
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

                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          //width: width*0.3,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(elephant);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/dogpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                        SizedBox(height: height*0.1,),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/catpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.31,
                    width: width,
                    child: Column(
                      children: [
                        Text("(2) Which animal can move?",style: mcqteststyle(),),
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
                                  Text("Dog",style: mcqteststyletwo(),),
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

                                  Text("Elephant",style: mcqteststyletwo(),),

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
                                  Text("Cat",style: mcqteststyletwo(),),
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

                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          //width: width*0.3,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(dog);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/cowpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                        SizedBox(height: height*0.1,),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/monkeypic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.31,
                    width: width,
                    child: Column(
                      children: [
                        Text("(3) Which animal can move?",style: mcqteststyle(),),
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

                                  Text("Cow",style: mcqteststyletwo(),),
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

                                  Text("Monkey",style: mcqteststyletwo(),),

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

                                  Text("Dog",style: mcqteststyletwo(),),
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

                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          //width: width*0.3,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(ant);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/sparrowpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                        SizedBox(height: height*0.1,),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/kangaroopic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: height*0.31,
                    width: width,
                    child: Column(
                      children: [
                        Text("(4) Which can move?",style: mcqteststyle(),),
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

                                  Text("Ant",style: mcqteststyletwo(),),
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
                                  Text("Sparrow",style: mcqteststyletwo(),),

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

                                  Text("Kangaroo",style: mcqteststyletwo(),),
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

                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          //width: width*0.3,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(tiger);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/peigonpic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                        SizedBox(height: height*0.1,),
                        Container(
                          height: height * 0.2,
                          // width: width*0.3,
                          // color: Colors.lightGreenAccent,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 2
                              ),
                              //shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('asset/images/kangaroopic.jpg'),
                                  fit: BoxFit.contain)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //  color: Colors.green,
                    height: height*0.31,
                    width: width,
                    child: Column(
                      children: [
                        Text("(5) Which can move?",style: mcqteststyle(),),
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

                                  Text("Tiger",style: mcqteststyletwo(),),
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


                                  Text("Peigon",style: mcqteststyletwo(),),

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
                                  Text("Kangaroo",style: mcqteststyletwo(),),
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
                            fontSize:width* 0.07,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TestLevelOnePage(),));

                        },
                        child: Text('Submit',style: TextStyle(
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
  return TextStyle(fontSize: 25,color:Colors.deepOrange ,fontWeight: FontWeight.bold);
}


TextStyle mcqteststyletwo(){
  return TextStyle(fontSize: 25,color:Colors.deepOrange );
}