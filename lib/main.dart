
import 'package:flutter/material.dart';
import '../view/navbar.dart';

void main(){

  runApp(const TabBarDemos());
}



class MyApp extends StatelessWidget{

  const MyApp({
    super.key,
  });


  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Alison Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloFlutter()
    );
  }
}

class HelloFlutter extends StatelessWidget{
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text('Hello Alison'),
      )
    );
  }
}


class TabBarDemo extends StatelessWidget{

  const TabBarDemo({
    super.key,
  });
        
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
            title: Text('Hawawi Inc',
            style: TextStyle(
              fontSize: 40,
              color: const Color.fromARGB(255, 113, 49, 30),
              fontWeight: FontWeight.bold,
            )
            ),
            
            backgroundColor: Colors.indigo,
          ),
          body: TabBarView(
            children: [
              Icon(Icons.music_note, color: Colors.redAccent, size: 300),
              Icon(Icons.music_video, color: Colors.blue, size:300),
              Icon(Icons.camera_alt, color: Colors.indigo, semanticLabel: 'camera', size:300),
              Icon(Icons.grade, color: Colors.red, size:300, semanticLabel:'Star'),
              Icon(Icons.email, color: Colors.amber, size:300),
            ]
          )
        )
      )
    );
  }
}