
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
  Widget build(BuildContext context){
    return const ContainerApp();
  }
}

class ContainerApp extends StatefulWidget{
  const ContainerApp({super.key});

  @override
  State createState()=>_ContainerAppState();
}

class _ContainerAppState extends State{
  bool changeColor=true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Container App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:Container(
            color:changeColor?Colors.red:Colors.black,
            width: 100,
            height: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(changeColor==true){
              changeColor=false;
            } else {
              changeColor=true;
            }
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}
