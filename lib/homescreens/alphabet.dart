import 'package:flutter/material.dart';
import 'package:kids_education_app/homescreens/choosedalphabet.dart';
import 'package:kids_education_app/homescreens/firstlevel.dart';
import 'package:kids_education_app/homescreens/learning.dart';
import 'package:kids_education_app/model.dart';

class AlphabetsPage extends StatefulWidget {
  const AlphabetsPage({Key? key}) : super(key: key);

  @override
  State<AlphabetsPage> createState() => _AlphabetsPageState();
}

class _AlphabetsPageState extends State<AlphabetsPage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            title: Text('Alphabets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(padding: EdgeInsets.only(top: height*0.03),
          height: height,
          width: width,
         // color: Color(0xffFFBF00),
          child: Column(
            children: [
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
                    onPressed: () {},
                    child: Text('Choose The Alphabet',style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        fontSize: 20,
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
              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                height: height*0.73,
                width: width,
                // color: Colors.pink,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosedAlphabetAPage()));
                                  },
                                  child: Text('A',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => Bpage(),));
                                  },
                                  child: Text('B',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('C',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => Dpage(
                                    ),));
                                  },
                                  child: Text('D',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Epage()));
                                  },
                                  child: Text('E',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Fpage(
                                    ),));
                                  },
                                  child: Text('F',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('G',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hpage(
                                    ),));
                                  },
                                  child: Text('H',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Ipage()));
                                  },
                                  child: Text('I',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Jpage(
                                    ),));
                                  },
                                  child: Text('J',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('K',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('L',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('M',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('N',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('O',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Ppage(
                                    ),));
                                  },
                                  child: Text('P',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('Q',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('R',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Spage()));
                                  },
                                  child: Text('S',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tpage(
                                    ),));
                                  },
                                  child: Text('T',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('U',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('V',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Wpage()));
                                  },
                                  child: Text('W',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('X',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => StartlevelPage()));
                                  },
                                  child: Text('Y',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
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
                                  child: Text('Z',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ],

                ),

              ),

            ],
          ),
        )
    ));
  }
}
