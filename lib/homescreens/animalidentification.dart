import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class AnimalIdentifyPage extends StatefulWidget {

  const AnimalIdentifyPage({Key? key}) : super(key: key);

  @override
  State<AnimalIdentifyPage> createState() => _AnimalIdentifyPageState();
}

class _AnimalIdentifyPageState extends State<AnimalIdentifyPage> {
  bool _clicked = false;
  late Object elephant;
  late Object horse;
  //final player = AudioPlayer();
  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
          //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: height*0.15,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    )

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //if (_clicked) Text('Button is clicked'),
                    ClipPath(
                      clipper: ArrowShapeBackward(),
                      child: Container(
                        height: height*0.055,
                        width: width*0.21,
                        color: Color(0xffFFBF00),
                      ),
                    ),
                    if (_clicked)Container(
                      //margin: EdgeInsets.only(left: width*0.25),
                      height: height*0.07,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent,
                        border: Border.all(color: Colors.white,width: 2)
                        // gradient: LinearGradient(
                        //   colors: [Color(0xffff6e02),Colors.amber,],
                        //   begin: FractionalOffset.centerLeft,
                        //   end: FractionalOffset.centerRight,
                        //   // colors: [
                        //   //   Color(0xffFF7034),
                        //   //   Color(0xffED9121),
                        //   // ],
                        //   // begin: Alignment.topLeft,
                        //   // end: Alignment.bottomRight,
                        // ),
                      ),

                      child:
                      Text('Horse',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalIdentifyPagesecond(),));
                      },
                      child: ClipPath(
                        clipper: ArrowShapeForward(),
                        child: Container(
                          height: height*0.05,
                          width: width*0.2,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),


                  ],
                ),

              ),

             // SizedBox(height: height*0.05,),
              Container(
                height: height*0.62,
                width: width,
                //color: Colors.blue,
                 child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(horse);
                    scene.camera.zoom = 10;
                    },
                 ),
              ),
              //SizedBox(height: height*0.02,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //if (_clicked) Text('Button is clicked'),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _clicked = true;
                      });
                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlueAccent
                        // gradient: LinearGradient(
                        //   // colors: [
                        //
                        //   //   Color(0xffff6e02),Colors.amber,],
                        //   // begin: FractionalOffset.centerLeft,
                        //   // end: FractionalOffset.centerRight,
                        //   // colors: [
                        //   //   Color(0xffFF7034),
                        //   //   Color(0xffED9121),
                        //   // ],
                        //   // begin: Alignment.topLeft,
                        //   // end: Alignment.bottomRight,
                        // ),
                      ),
                      child: Text('Check',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),

                  Container(margin: EdgeInsets.only(bottom:height*0.02),
                      child: IconButton(onPressed: () async {
                        ////////////////////////
                        // AudioCache cache=AudioCache();
                        // AudioPlayer player= await cache.load('horsesound.mp3');
                        // player.play;
                        ///////////////////////
                        // final player=AudioPlayer();
                        // await player.setSource(AssetSource('horsesound.mp3'));
                        // player.play;
                        final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                        await assetsAudioPlayer.open(
                          Audio('asset/audio/horsesound.mp3'),
                          autoStart:false,
                          showNotification: true,

                        );
                        assetsAudioPlayer.play();

                      }, icon: Icon(Icons.volume_up_sharp,size: 50,color: Colors.deepOrangeAccent,),)),
                ],
              ),
             // SizedBox(height: height*0.02,),

            ],
          ),
        )
    ));
  }
}
class ArrowShapeBackward extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(0, h*0.5);
    path.lineTo(w*0.2, 0);
    path.lineTo(w*0.2, h*0.15);
    path.lineTo(w, h*0.15);
    path.lineTo(w, h*0.85);
    path.lineTo(w*0.2, h * 0.85);
    path.lineTo(w*0.2, h);

    path.close();

    // path.lineTo(w * 0.5, h * 0.5);
    // path.lineTo(w*0.7, 0);
    //
    // path.lineTo(w * 0.2, h * 0.5);

    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class ArrowShapeForward extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(w*0.7, h * 0.1);
    path.lineTo(0, h * 0.1);
    path.lineTo(0, h*0.88);
    path.lineTo(w*0.7, h*0.88);
    path.lineTo(w*0.7, h);
    path.lineTo(w, h * 0.5);
    path.lineTo(w*0.7, 0);

    path.close();

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

///////////////////////////////////////

class AnimalIdentifyPagesecond extends StatefulWidget {

  const AnimalIdentifyPagesecond({Key? key}) : super(key: key);

  @override
  State<AnimalIdentifyPagesecond> createState() => _AnimalIdentifyPagesecondState();
}

class _AnimalIdentifyPagesecondState extends State<AnimalIdentifyPagesecond> {
  late Object elephant;
  bool _clicked = false;
  
  @override
  void initState() {
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
        //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        // ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: height*0.22,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    )

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: ClipPath(
                        clipper: ArrowShapeBackward(),
                        child: Container(
                          height: height*0.055,
                          width: width*0.21,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    if (_clicked) Container(
                      height: height*0.07,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepOrangeAccent,
                          border: Border.all(color: Colors.white,width: 2)

                      ),
                     child: Text('Elephant',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalIdentifyPagethird(),));

                      },
                       child: ClipPath(
                        clipper: ArrowShapeForward(),
                        child: Container(
                          height: height*0.05,
                          width: width*0.2,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),


                  ],
                ),

              ),

              // SizedBox(height: height*0.05,),
              Container(
                height: height*0.62,
                width: width,
                //color: Colors.blue,
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(elephant);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              //SizedBox(height: height*0.02,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){

                        setState(() {
                          _clicked = true;
                        });

                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent
                      ),
                      child: Text('Check',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),


                  Container(margin: EdgeInsets.only(bottom:height*0.02),
                      child: IconButton(onPressed: () async {
                        final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                        await assetsAudioPlayer.open(
                          Audio('asset/audio/elephantsound.mp3'),
                          autoStart:false,
                          showNotification: true,

                        );
                        assetsAudioPlayer.play();

                      }, icon: Icon(Icons.volume_up_sharp,size: 50,color: Colors.deepOrangeAccent,),)),
                ],
              ),
              // SizedBox(height: height*0.02,),

            ],
          ),
        )
    ));
  }
}

class AnimalIdentifyPagethird extends StatefulWidget {

  const AnimalIdentifyPagethird({Key? key}) : super(key: key);

  @override
  State<AnimalIdentifyPagethird> createState() => _AnimalIdentifyPagethirdState();
}

class _AnimalIdentifyPagethirdState extends State<AnimalIdentifyPagethird> {
  late Object dog;
  bool _clicked = false;

  @override
  void initState() {
    dog = Object(fileName: "asset/dog/model/dog.obj");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
      //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
      // ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: height*0.22,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    )

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: ClipPath(
                        clipper: ArrowShapeBackward(),
                        child: Container(
                          height: height*0.055,
                          width: width*0.21,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    if (_clicked) Container(
                      height: height*0.07,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepOrangeAccent,
                          border: Border.all(color: Colors.white,width: 2)
                      ),
                      child: Text('Dog',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalIdentifyPagefour(),));
                      },
                      child: ClipPath(
                        clipper: ArrowShapeForward(),
                        child: Container(
                          height: height*0.05,
                          width: width*0.2,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),


                  ],
                ),

              ),

              // SizedBox(height: height*0.05,),
              Container(
                height: height*0.62,
                width: width,
                //color: Colors.blue,
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(dog);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              //SizedBox(height: height*0.02,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {
                        _clicked = true;
                      });

                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent
                      ),
                      child: Text('Check',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),


                  Container(margin: EdgeInsets.only(bottom:height*0.02),
                      child: IconButton(onPressed: () async {
                        final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                        await assetsAudioPlayer.open(
                          Audio('asset/audio/dogsound.mp3'),
                          autoStart:false,
                          showNotification: true,

                        );
                        assetsAudioPlayer.play();

                      }, icon: Icon(Icons.volume_up_sharp,size: 50,color: Colors.deepOrangeAccent,),)),
                ],
              ),
              // SizedBox(height: height*0.02,),

            ],
          ),
        )
    ));
  }
}
class AnimalIdentifyPagefour extends StatefulWidget {

  const AnimalIdentifyPagefour({Key? key}) : super(key: key);

  @override
  State<AnimalIdentifyPagefour> createState() => _AnimalIdentifyPagefourState();
}

class _AnimalIdentifyPagefourState extends State<AnimalIdentifyPagefour> {
  late Object tiger;
  bool _clicked = false;

  @override
  void initState() {
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
      //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
      // ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: height*0.22,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    )

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: ClipPath(
                        clipper: ArrowShapeBackward(),
                        child: Container(
                          height: height*0.055,
                          width: width*0.21,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    if (_clicked) Container(
                      height: height*0.07,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepOrangeAccent,
                          border: Border.all(color: Colors.white,width: 2)

                      ),
                      child: Text('Tiger',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalIdentifyPagefive(),));

                      },
                      child: ClipPath(
                        clipper: ArrowShapeForward(),
                        child: Container(
                          height: height*0.05,
                          width: width*0.2,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),


                  ],
                ),

              ),

              // SizedBox(height: height*0.05,),
              Container(
                height: height*0.62,
                width: width,
                //color: Colors.blue,
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(tiger);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              //SizedBox(height: height*0.02,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {
                        _clicked = true;
                      });

                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent
                      ),
                      child: Text('Check',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),


                  Container(margin: EdgeInsets.only(bottom:height*0.02),
                      child: IconButton(onPressed: () async {
                        final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                        await assetsAudioPlayer.open(
                          Audio('asset/audio/tigersound.mp3'),
                          autoStart:false,
                          showNotification: true,

                        );
                        assetsAudioPlayer.play();

                      }, icon: Icon(Icons.volume_up_sharp,size: 50,color: Colors.deepOrangeAccent,),)),
                ],
              ),
              // SizedBox(height: height*0.02,),

            ],
          ),
        )
    ));
  }
}
class AnimalIdentifyPagefive extends StatefulWidget {

  const AnimalIdentifyPagefive({Key? key}) : super(key: key);

  @override
  State<AnimalIdentifyPagefive> createState() => _AnimalIdentifyPagefiveState();
}

class _AnimalIdentifyPagefiveState extends State<AnimalIdentifyPagefive> {
  late Object parrot;
  bool _clicked = false;

  @override
  void initState() {
    parrot = Object(fileName: "asset/parrot/model/parrot.obj");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      // appBar: AppBar(backgroundColor: Color(0xffFFBF00),
      //   //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
      // ),
        body: Container(
          height: height,
          width: width,
          // color: Color(0xffFFBF00),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: height*0.22,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    )

                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: ClipPath(
                        clipper: ArrowShapeBackward(),
                        child: Container(
                          height: height*0.055,
                          width: width*0.21,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    if (_clicked) Container(
                      height: height*0.07,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepOrangeAccent,
                          border: Border.all(color: Colors.white,width: 2)

                      ),
                      child: Text('Parrot',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                    ClipPath(
                      clipper: ArrowShapeForward(),
                      child: Container(
                        height: height*0.05,
                        width: width*0.2,
                       // color: Colors.white,
                      ),
                    ),


                  ],
                ),

              ),

              // SizedBox(height: height*0.05,),
              Container(
                height: height*0.62,
                width: width,
                //color: Colors.blue,
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(parrot);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              //SizedBox(height: height*0.02,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {
                        _clicked = true;
                      });

                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent
                      ),
                      child: Text('Check',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),


                  Container(margin: EdgeInsets.only(bottom:height*0.02),
                      child: IconButton(onPressed: () async {
                        final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
                        await assetsAudioPlayer.open(
                          Audio('asset/audio/parrotsound.mp3'),
                          autoStart:false,
                          showNotification: true,

                        );
                        assetsAudioPlayer.play();

                      }, icon: Icon(Icons.volume_up_sharp,size: 50,color: Colors.deepOrangeAccent,),)),
                ],
              ),
              // SizedBox(height: height*0.02,),

            ],
          ),
        )
    ));
  }
}
