import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ChoosedAlphabetAPage extends StatefulWidget {

   ChoosedAlphabetAPage({Key? key}) : super(key: key);

  @override
  State<ChoosedAlphabetAPage> createState() => _ChoosedAlphabetAPageState();
}

class _ChoosedAlphabetAPageState extends State<ChoosedAlphabetAPage> {
  late Object ant;
  @override
  void initState() {
    ant = Object(fileName: "asset/ant/model/ant.obj");
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                  width: 1,
                  )

                ),
                child:
                // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //
                //     // ClipPath(
                //     //   clipper: ArrowShapeBackward(),
                //     //   child: Container(
                //     //     height: height*0.055,
                //     //     width: width*0.21,
                //     //     color: Colors.deepOrange,
                //     //   ),
                //     // ),
                //     // ClipPath(
                //     //   clipper: ArrowShapeForward(),
                //     //   child: Container(
                //     //     height: height*0.05,
                //     //     width: width*0.2,
                //     //     color: Colors.deepOrange,
                //     //   ),
                //     // ),
                //
                //
                //   ],
                // ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                          // colors: [
                          //   Color(0xffFF7034),
                          //   Color(0xffED9121),
                          // ],
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                        ),
                      ),
                      child: Text('A',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                          // colors: [
                          //   Color(0xffFF7034),
                          //   Color(0xffED9121),
                          // ],
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                        ),
                      ),
                      child: Text('Ant',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
             Container(
                    height: height*0.6,
                    width: width,
                    //color: Colors.blue,
                    child:Cube(
                      onSceneCreated: (Scene scene) {
                        scene.world.add(ant);
                        scene.camera.zoom = 10;
                      },
                    ),
             ),
              SizedBox(height: height*0.02,),
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

class Dpage extends StatefulWidget {

  Dpage({Key? key}) : super(key: key);

  @override
  State<Dpage> createState() => _DpageState();
}

class _DpageState extends State<Dpage> {
  late Object dog;
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffFFBF00),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black54,
                      width: 1,
                    ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('D',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Dog',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(dog);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

class Epage extends StatefulWidget {

  Epage({Key? key}) : super(key: key);

  @override
  State<Epage> createState() => _EpageState();
}

class _EpageState extends State<Epage> {
  late Object elephant;
  @override
  void initState() {
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");  super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('E',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Elephant',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(elephant);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

class Fpage extends StatefulWidget {

  Fpage({Key? key}) : super(key: key);

  @override
  State<Fpage> createState() => _FpageState();
}

class _FpageState extends State<Fpage> {
  late Object fish;
  @override
  void initState() {
    fish = Object(fileName: "asset/fish/model/fish.obj");  super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('F',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Fish',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(fish);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

///////////////////////
class Hpage extends StatefulWidget {

  Hpage({Key? key}) : super(key: key);

  @override
  State<Hpage> createState() => _HpageState();
}

class _HpageState extends State<Hpage> {
  late Object horse;
  @override
  void initState() {
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj"); super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('H',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Horse',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(horse);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}
/////////////////////////////////
class Jpage extends StatefulWidget {

  Jpage({Key? key}) : super(key: key);

  @override
  State<Jpage> createState() => _JpageState();
}

class _JpageState extends State<Jpage> {
  late Object jet;
  @override
  void initState() {
    jet = Object(fileName: "asset/jet/Jet.obj");  super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('J',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Jet',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(jet);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}
/////////////////////////
class Ppage extends StatefulWidget {

  Ppage({Key? key}) : super(key: key);

  @override
  State<Ppage> createState() => _PpageState();
}

class _PpageState extends State<Ppage> {
  late Object parrot;
  @override
  void initState() {
    parrot = Object(fileName: "asset/parrot/model/parrot.obj"); super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('P',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Parrot',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(parrot);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}
//////////////////////////
class Spage extends StatefulWidget {

  Spage({Key? key}) : super(key: key);

  @override
  State<Spage> createState() => _SpageState();
}

class _SpageState extends State<Spage> {
  late Object shark;
  @override
  void initState() {
    shark = Object(fileName: "asset/shark/shark.obj");  super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('S',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Shark',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(shark);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}
///////////////////////
class Tpage extends StatefulWidget {

  Tpage({Key? key}) : super(key: key);

  @override
  State<Tpage> createState() => _TpageState();
}

class _TpageState extends State<Tpage> {
  late Object tiger;
  @override
  void initState() {
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");  super.initState();
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('T',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Tiger',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child:Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(tiger);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}
///////////////////
// class Wpage extends StatefulWidget {
//
//   Wpage({Key? key}) : super(key: key);
//
//   @override
//   State<Wpage> createState() => _WpageState();
// }

// class _WpageState extends State<Wpage> {
//   late Object wolf;
//   @override
//   void initState() {
//     wolf = Object(fileName: "asset/wolf/model/Wolf_obj.obj");  super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var height=MediaQuery.of(context).size.height;
//     var width=MediaQuery.of(context).size.width;
//     return SafeArea(child: Scaffold(
//         appBar: AppBar(backgroundColor: Color(0xffFFBF00),
//           //title: Text('Alphabet (A)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
//         ),
//         body: Container(
//           height: height,
//           width: width,
//           // color: Color(0xffFFBF00),
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(15),
//                 height: height*0.2,
//                 width: width,
//                 decoration: BoxDecoration(
//                   color: Color(0xffFFBF00),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
//                   border: Border.all(color: Colors.black54,
//                     width: 1,
//                   ),
//                 ),
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: height*0.1,
//                       width: width*0.25,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         //color: Colors.amber,
//                         borderRadius: BorderRadius.circular(15),
//                         gradient: LinearGradient(
//                           colors: [Color(0xffff6e02),Color(0xffff6e02),],
//                           begin: FractionalOffset.centerLeft,
//                           end: FractionalOffset.centerRight,
//                         ),
//                       ),
//                       child: Text('W',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
//                     ),
//
//                     Container(
//                       height: height*0.1,
//                       width: width*0.4,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         //color: Colors.amber,
//                         borderRadius: BorderRadius.circular(15),
//                         gradient: LinearGradient(
//                           colors: [Color(0xffff6e02),Color(0xffff6e02),],
//                           begin: FractionalOffset.centerLeft,
//                           end: FractionalOffset.centerRight,
//                         ),
//                       ),
//                       child: Text('Wolf',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(height: height*0.02,),
//               Container(
//                 height: height*0.6,
//                 width: width,
//                 //color: Colors.blue,
//                 child:Cube(
//                   onSceneCreated: (Scene scene) {
//                     scene.world.add(wolf);
//                     scene.camera.zoom = 10;
//                   },
//                 ),
//               ),
//               SizedBox(height: height*0.02,),
//             ],
//           ),
//         )
//     ));
//   }
// }
/////////////////////
class Bpage extends StatefulWidget {

  Bpage({Key? key}) : super(key: key);

  @override
  State<Bpage> createState() => _BpageState();
}

class _BpageState extends State<Bpage> {
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('B',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Banana',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
               child: WebView(
                initialUrl: 'https://app.vectary.com/p/2wZ5TCQiEg01mNPOljHCkE',
                javascriptMode: JavascriptMode.unrestricted,
              ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

/////////////////
class Ipage extends StatefulWidget {

  Ipage({Key? key}) : super(key: key);

  @override
  State<Ipage> createState() => _IpageState();
}

class _IpageState extends State<Ipage> {
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('I',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Ice Cream',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child: WebView(
                  initialUrl: 'https://app.vectary.com/p/4MEaLadFhFPWwNGcURzkoC',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

class Kpage extends StatefulWidget {

  Kpage({Key? key}) : super(key: key);

  @override
  State<Kpage> createState() => _KpageState();
}

class _KpageState extends State<Kpage> {
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
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffFFBF00),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('K',style: TextStyle(color: Colors.white,fontSize: width*0.1,fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      height: height*0.1,
                      width: width*0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xffff6e02),Color(0xffff6e02),],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text('Kiwi',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.02,),
              Container(
                height: height*0.6,
                width: width,
                //color: Colors.blue,
                child: WebView(
                  initialUrl: 'https://app.vectary.com/p/78tvQPaqzdrzZhhBlDIXUL',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        )
    ));
  }
}

