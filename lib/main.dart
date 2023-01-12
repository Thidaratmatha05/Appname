import 'dart:js';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Name Flutter App"),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          blockText(context: context, color: Colors.red, blocktext: "My Name"),
          block(context: context, color: Colors.blue, block: "Group Name"),
        ],
      )),
    );
  }

  Widget blockText(
      {required BuildContext context,
      required Color color,
      required String blocktext}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Container(
          width: 100,
          padding: EdgeInsets.all(10),
          //margin: EdgeInsets.all(10),
          color: color,
          child: Text(blocktext)),
    );
  }
}
 Widget block(
      {required BuildContext context,
      required Color color,
      required String block}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Container(
          width: 100,
          padding: EdgeInsets.all(10),
          //margin: EdgeInsets.all(10),
          color: color,
          child: Text(block)),
    );
  }


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Name"),
        ),
        body: Center(
          child: Text("My Name Thidart Mata 633410077-0"),
        ));
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Group Name"),
        ),
        
     body: Center(
          child: Center(      
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children:<Widget>[
                Text("1.นางสาวเพชรสุดา จำปาอ่อน 633410023-3"),
                Text("2.นางสาวธิดารัตน์ มาทา 633410077-0"),
                Text("3.นายพงศ์ภรณ์ ถนอมในเมือง 633410082-7"),
                Text("4.นายกวินภพ ชมนิกร 633410142-5"),         
                ]    
            )
          )       
      ),  
  );
  }
}
