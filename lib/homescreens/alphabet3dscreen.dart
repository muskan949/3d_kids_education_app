import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class HomePageeee extends StatefulWidget {
  const HomePageeee({Key? key}) : super(key: key);
  @override
  _HomePageeeeState createState() => _HomePageeeeState();
}

class _HomePageeeeState extends State<HomePageeee> {
  late Object jet;
  late Object shark;
  late Object horse;
  late Object vechile;
  late Object mask;
  late Object aladdin;
  late Object ant;
  late Object dog;
  late Object elephant;
  late Object fish;
  late Object keyboard;
  late Object parrot;
  late Object tiger;
  late Object beechcraft;
  late Object wolf;



  @override
  void initState() {
    jet = Object(fileName: "asset/jet/Jet.obj");
    horse = Object(fileName: "asset/horsefolder/cad/model/horse.obj");
    shark = Object(fileName: "asset/shark/shark.obj");
    vechile = Object(fileName: "asset/vechile/model/vechile.obj");
    mask = Object(fileName: "asset/mask/model/mask.obj");
    dog = Object(fileName: "asset/dog/model/dog.obj");
    aladdin = Object(fileName: "asset/aladdin/model/Aladdin.obj");
    ant = Object(fileName: "asset/ant/model/ant.obj");
    elephant = Object(fileName: "asset/elephant/model/elephant.obj");
    fish = Object(fileName: "asset/fish/model/fish.obj");
    keyboard = Object(fileName: "asset/keyboard/model/keyboard.obj");
    parrot = Object(fileName: "asset/parrot/model/parrot.obj");
    tiger = Object(fileName: "asset/tiger/model/smilodon.obj");
    beechcraft = Object(fileName: "asset/beechcraft/model/G17SL.obj");
    wolf = Object(fileName: "asset/wolf/model/Wolf_obj.obj");



    shark.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter 3D"),
      ),
      body: Container(
        child: Column(
          children: [
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(shark);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(horse);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(dog);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(mask);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(jet);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            //
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(vechile);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(wolf);
                  scene.camera.zoom = 10;
                },
              ),
            ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(beechcraft);
                  scene.camera.zoom = 10;
                },
              ),
            ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(shark);
                  scene.camera.zoom = 10;
                },
              ),
            ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(fish);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(rangrover);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
            //
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(lightsaber);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}