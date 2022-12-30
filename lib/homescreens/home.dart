import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/firstlevel.dart';
import 'package:kids_education_app/loginscreens/login.dart';
import 'package:kids_education_app/main.dart';
import 'package:kids_education_app/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
     // appBar: AppBar(backgroundColor: Color(0xffFFBF00),),
      body: Container(
        height: height,
        width: width,
      //  color: Colors.green,
        child: Column(
          children: [
            Container(
              height: height*0.3,
              width: width,
              color: Color(0xffFFBF00),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: width*0.6),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));

                    }, icon: Icon(Icons.power_settings_new,size: width*0.1,color: Colors.white,)),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width*0.35,
                    //  color: Colors.lightGreenAccent,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white, width: 2
                            ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('asset/images/logimage.jpg'),
                            fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Container(
              height: height*0.075,
              width: width*0.65,
              decoration: BoxDecoration(
                color: Color(0xffFF5B00),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(
                //   color: Colors.white54,
                //   width: 2,
                //   style: BorderStyle.solid,
                // ),
              ),
              child: Center(child: Text('LEVELS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
            SizedBox(height: height*0.02,),
            Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
              height: height*0.1,
              width: width,
            //  color: Colors.blue,
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.16,
                          height: height*0.075,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              //color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [Color(0xffff6e02),Colors.amber,],
                              begin: FractionalOffset.centerLeft,
                              end: FractionalOffset.centerRight,
                            ),
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                              ),));
                            },
                              child: Text('1',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                        ),
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('2',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),

                ],
              ),
                  ),
            Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
              height: height*0.1,
              width: width,
            //  color: Colors.blue,
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('3',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('4',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),

                ],
              ),
            ),

            Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
              height: height*0.1,
              width: width,
             // color: Colors.blue,
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('5',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('6',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),

                ],
              ),
            ),

            Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
              height: height*0.1,
              width: width,
             // color: Colors.blue,
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('7',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('8',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),

                ],
              ),
            ),

            Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
              height: height*0.1,
              width: width,
           //   color: Colors.blue,
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('9',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    width: width*0.16,
                    height: height*0.075,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xffff6e02),Colors.amber,],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                      ),
                    ),
                    child: TextButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
                          // ),));
                        },
                        child: Text('10',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                  ),

                ],
              ),
            ),

            // Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
            //   height: height*0.4,
            //   width: width,
            //   //color: Colors.blue,
            //   child: GridView.builder(
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         mainAxisExtent: 50,
            //         crossAxisSpacing: 150,
            //         mainAxisSpacing: 20,
            //       ),
            //       itemCount:ContainerModel.btnlistsecond.length.clamp(0, 8),
            //       itemBuilder: (context, index) {
            //
            //
            //         return Container(
            //           alignment: Alignment.center,
            //           decoration: BoxDecoration(
            //             //color: Colors.amber,
            //             borderRadius: BorderRadius.circular(15),
            //             gradient: LinearGradient(
            //               colors: [Color(0xffff6e02),Colors.amber,],
            //               begin: FractionalOffset.centerLeft,
            //               end: FractionalOffset.centerRight,
            //               // colors: [
            //               //   Color(0xffFF7034),
            //               //   Color(0xffED9121),
            //               // ],
            //               // begin: Alignment.topLeft,
            //               // end: Alignment.bottomRight,
            //             ),
            //           ),
            //           child: TextButton(
            //               onPressed: (){
            //                 // Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage(
            //                 //   btnname: ContainerModel.btnlistsecond[index].btnname,
            //                 // ),));
            //               },
            //               child: Text('${ContainerModel.btnlistsecond[index].btnname}',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
            //         );
            //       }),
            // ),
        ],
            ),

        ),
      )
    );
  }
}
