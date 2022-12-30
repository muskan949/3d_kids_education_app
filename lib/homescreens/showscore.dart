import 'package:flutter/material.dart';
import 'package:kids_education_app/model.dart';
import 'package:kids_education_app/testcases/caseone.dart';
import 'package:kids_education_app/testcases/casethree.dart';
import 'package:kids_education_app/testcases/casetwo.dart';

class ShowScorePage extends StatefulWidget {
  const ShowScorePage({Key? key}) : super(key: key);

  @override
  State<ShowScorePage> createState() => _ShowScorePageState();
}

class _ShowScorePageState extends State<ShowScorePage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
          //  title: Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
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
                              image: AssetImage('asset/images/teacher.png'),
                              fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              ),
              Container(child:Text('Show Score of:',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CaseOneScore(),));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CasetwoScore(),));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CaseFourScore(),));
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


            ],
          ),
        )
    ));
  }
}

class CaseOneScore extends StatefulWidget {
  const CaseOneScore({Key? key}) : super(key: key);

  @override
  State<CaseOneScore> createState() => _CaseOneScoreState();
}

class _CaseOneScoreState extends State<CaseOneScore> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            title: Text('Case 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
         // color: Colors.blue,
          height: height,
          width: width,
          child: ListView.builder(
            itemCount: ContainerModel.stdlistcaseone.length,
              itemBuilder: (context, index) {
                return  ListTile(
                  title: Text('Name: ${ContainerModel.stdlistcaseone[index].stdname}'),
                  subtitle: Text('Score: ${ContainerModel.stdlistcaseone[index].stdscore}'),
                );
              },),
        ),
      ),
    );
  }
}

class CasetwoScore extends StatefulWidget {
  const CasetwoScore({Key? key}) : super(key: key);

  @override
  State<CasetwoScore> createState() => _CasetwoScoreState();
}

class _CasetwoScoreState extends State<CasetwoScore> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            title: Text('Case 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
          // color: Colors.blue,
          height: height,
          width: width,
          child: ListView.builder(
            itemCount: ContainerModel.stdlistcasetwo.length,
            itemBuilder: (context, index) {
              return  ListTile(
                title: Text('Name: ${ContainerModel.stdlistcasetwo[index].stdname}'),
                subtitle: Text('Score: ${ContainerModel.stdlistcasetwo[index].stdscore}'),
              );
            },),
        ),
      ),
    );
  }
}


class CaseFourScore extends StatefulWidget {
  const CaseFourScore({Key? key}) : super(key: key);

  @override
  State<CaseFourScore> createState() => _CaseFourScoreState();
}

class _CaseFourScoreState extends State<CaseFourScore> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFFBF00),
            title: Text('Case 4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ),
        body: Container(
          // color: Colors.blue,
          height: height,
          width: width,
          child: ListView.builder(
            itemCount: ContainerModel.stdlistcasefour.length,
            itemBuilder: (context, index) {
              return  ListTile(
                title: Text('Name: ${ContainerModel.stdlistcasefour[index].stdname}'),
                subtitle: Text('Score: ${ContainerModel.stdlistcasefour[index].stdscore}'),
              );
            },),
        ),
      ),
    );
  }
}