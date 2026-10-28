import 'package:flutter/material.dart';

class TabBarDemos extends StatelessWidget {
  const TabBarDemos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Hawawi Inc',
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 113, 49, 30),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: Colors.indigo,
                ),
                body: const TabBarView(children: [
                  Icon(Icons.music_note, color: Colors.redAccent, size: 300),
                  Icon(Icons.music_video, color: Colors.blue, size: 300),
                  Icon(Icons.camera_alt, color: Colors.indigo, semanticLabel: 'camera', size: 300),
                  Icon(Icons.grade, color: Colors.red, size: 300, semanticLabel: 'Star'),
                  Icon(Icons.email, color: Colors.amber, size: 300),
                ]),
                // 1. Moved the TabBar down here
                bottomNavigationBar: Material(
                  // 2. Change the entire bottom bar's background color here
                  color: Colors.indigo, 
                  child: const TabBar(
                    // 3. Customize active, inactive, and line indicator colors here
                    labelColor: Colors.amber,          // Color of active icon
                    unselectedLabelColor: Colors.white70, // Color of inactive icons
                    indicatorColor: Colors.amber,      // Color of the line above the active tab
                    
                    tabs: [
                      Tab(icon: Icon(Icons.music_note)),
                      Tab(icon: Icon(Icons.music_video)),
                      Tab(icon: Icon(Icons.camera_alt)),
                      Tab(icon: Icon(Icons.grade)),
                      Tab(icon: Icon(Icons.email)),
                    ],
                  ),
                ))));
  }
}
