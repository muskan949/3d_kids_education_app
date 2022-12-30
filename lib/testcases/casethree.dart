import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:kids_education_app/testcases/testlevel.dart';

class CaseThreePage extends StatefulWidget {
  const CaseThreePage({Key? key }) : super(key: key);
  @override
  State<CaseThreePage> createState() => _CaseThreePageState();
}

class _CaseThreePageState extends State<CaseThreePage> {

  late Object elephant;
  late Object horse;
  late Object tiger;
  late Object dog;
  late Object ant;
  String rightAnswer="Elephant";
  String selectedAnswer="";
  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");
    dog = Object(fileName: "asset/dog/model/dog.obj");
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");
    ant = Object(fileName: "asset/ant/model/ant.obj");
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

           Future.delayed(Duration(seconds: 5),(){
             final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
             assetsAudioPlayer.open(
               Audio('asset/audio/whereelephant.mp3'),
               autoStart:true,
               showNotification: true,

             );
             assetsAudioPlayer.play();
             print('okay');
           });
           // final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
           //   assetsAudioPlayer.open(
           //    Audio('asset/audio/whereelephant.mp3'),
           //    autoStart:true,
           //    showNotification: true,
           //
           //  );
           // assetsAudioPlayer.play();


    super.initState();
  }
  @override

  // dispose() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
        //   title: Text('Case 3'),
        //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        // ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height*0.03),
                height: height*0.12,
                width: width*0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFF5B00),
                    border: Border.all(color: Colors.white,width: 2)
                ),

                child:
                Text('Elephant?',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                ),
              ),
              SizedBox(height: height*0.02,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child:  Row(
                    children: [
                      InkWell(
                        onTap: () {
                             setState(() {
                               selectedAnswer="Elephant";

                             });
                             print("answer");
                             print(selectedAnswer);
                             print(rightAnswer);

                             if(selectedAnswer==rightAnswer){
                               print("true");
                               final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                               assetsAudioPlayer.open(
                                 Audio('asset/audio/excellent.mp3'),
                                 autoStart:true,
                                 showNotification: true,

                               );
                               assetsAudioPlayer.play();
                               Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));

                             }
                             else{
                               print("false");
                               final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                               assetsAudioPlayer.open(
                                 Audio('asset/audio/letstryagain.mp3'),
                                 autoStart:true,
                                 showNotification: true,

                               );
                               assetsAudioPlayer.play();
                             }


                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(elephant);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Dog";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                           // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(dog);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Ant";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(ant);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Tiger";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                         // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(tiger);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Horse";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                     //   color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(horse);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                 // height: height*0.52,
                  width:width,
                  decoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(5),
                      //color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('asset/images/grass.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
            ],
          ),
        )
    ));
  }
}


class CaseThreePagesecond extends StatefulWidget {

  const CaseThreePagesecond({Key? key, this.rightAnswer}) : super(key: key);
  final rightAnswer;


  @override
  State<CaseThreePagesecond> createState() => _CaseThreePagesecondState();
}

class _CaseThreePagesecondState extends State<CaseThreePagesecond> {

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
  late Object parrot;
  String rightAnswer="Dog";
  String selectedAnswer="";

  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");
    dog = Object(fileName: "asset/dog/model/dog.obj");
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");
    parrot = Object(fileName: "asset/parrot/model/parrot.obj");

    Future.delayed(Duration(seconds: 2),() {
      final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
      assetsAudioPlayer.open(
        Audio('asset/audio/wheredog.mp3'),
        autoStart:true,
        showNotification: true,

      );
      assetsAudioPlayer.play();

    },);

    // final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    // assetsAudioPlayer.open(
    //   Audio('asset/audio/wheredog.mp3'),
    //   autoStart:true,
    //   showNotification: true,
    //
    // );
    // assetsAudioPlayer.play();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
        //   title: Text('Case 3'),
        //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        // ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Center(
          child: Container(
            child: Text('Rotate the phone'),
          ),
        )
            :Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height*0.03),
                height: height*0.12,
                width: width*0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFF5B00),
                    border: Border.all(color: Colors.white,width: 2)
                ),

                child:
                Text('Dog?',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                ),
              ),
              SizedBox(height: height*0.02,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child:  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer="Elephant";

                          });
                          // print("answer");
                          // print(selectedAnswer);
                          // print(rightAnswer);

                          if(selectedAnswer==rightAnswer){
                           // print("true");
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));

                          }
                          else{
                            print("false");
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }


                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          //color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(elephant);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Dog";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/excellent.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                              Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagethird(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/excellent.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagethird(),));
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(dog);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Parrot";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(parrot);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Tiger";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(tiger);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Horse";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          //   color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(horse);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  // height: height*0.52,
                  width:width,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    //color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('asset/images/grass.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
            ],
          ),
        )
    ));
  }
}


class CaseThreePagethird extends StatefulWidget {

  const CaseThreePagethird({Key? key}) : super(key: key);



  @override
  State<CaseThreePagethird> createState() => _CaseThreePagethirdState();
}

class _CaseThreePagethirdState extends State<CaseThreePagethird> {
  late Object fish;
  late Object horse;
  late Object shark;
  late Object dog;
  late Object parrot;
  String rightAnswer="Parrot";
  String selectedAnswer="";

  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");
    shark = Object(fileName: "asset/shark/shark.obj");
    dog = Object(fileName: "asset/dog/model/dog.obj");
    parrot = Object(fileName: "asset/parrot/model/parrot.obj");
    fish = Object(fileName: "asset/fish/model/fish.obj");

    Future.delayed(Duration(seconds: 2),() {
      final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
      assetsAudioPlayer.open(
        Audio('asset/audio/whereparrot.mp3'),
        autoStart:true,
        showNotification: true,

      );
      assetsAudioPlayer.play();

    },);

    // final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    // assetsAudioPlayer.open(
    //   Audio('asset/audio/whereparrot.mp3'),
    //   autoStart:true,
    //   showNotification: true,
    //
    // );
    // assetsAudioPlayer.play();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
        //   title: Text('Case 3'),
        //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        // ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Center(
          child: Container(
            child: Text('Rotate the phone'),
          ),
        )
            :Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height*0.03),
                height: height*0.12,
                width: width*0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFF5B00),
                    border: Border.all(color: Colors.white,width: 2)
                ),

                child:
                Text('Parrot?',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                ),
              ),
              SizedBox(height:height*0.02),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child:  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Dog";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(dog);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Parrot";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/excellent.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/excellent.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            Navigator.push(context,MaterialPageRoute(builder: (context) => TestLevelOnePage(),));
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: height*0.2),
                          height: height*0.4,
                          width: width*0.2,
                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(parrot);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Shark";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();

                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: height*0.1),
                          height: height*0.35,
                          width: width*0.3,

                          // color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(shark);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAnswer=="Horse";

                          });
                          if(selectedAnswer==rightAnswer){
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                            //  Navigator.push(context, MaterialPageRoute(builder:(context) => CaseThreePagesecond(),));
                          }
                          else{
                            final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                            assetsAudioPlayer.open(
                              Audio('asset/audio/letstryagain.mp3'),
                              autoStart:true,
                              showNotification: true,

                            );
                            assetsAudioPlayer.play();
                          }
                        },
                        child: Container(
                          height: height*0.5,
                          width: width*0.2,
                          //   color: Colors.green,
                          child: Cube(
                            onSceneCreated: (Scene scene) {
                              scene.world.add(horse);
                              scene.camera.zoom = 10;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  // height: height*0.52,
                  width:width,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    //color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('asset/images/grasswater.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
            ],
          ),
        )
    ));
  }
}


