import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayerApp(),
    );
  }
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  List<String> players = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW-2TYmSnW5E5IL_3M34U8f8wLyy1ycPeklg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-PNoM5uQlkPP5ahy0S6lh-eiDan2QsvpsUA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl6UGHscyN_ETHWoZO5G9spvOQlmPFy4rvdA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf_QU-qm2_AfunCqojQPnjKCR0SNMCt33VIw&s",
  ];

  List<Map<String, dynamic>> info = [
    {"name": "MS Dhoni", "age": 42, "matches": 98, "t20s": 85, "50s": 2, "100s": 0},
    {"name": "Virat Kohli", "age": 35, "matches": 115, "t20s": 90, "50s": 33, "100s": 1},
    {"name": "Rohit Sharma", "age": 37, "matches": 130, "t20s": 125, "50s": 31, "100s": 4},
    {"name": "Hardik Pandya", "age": 30, "matches": 87, "t20s": 70, "50s": 2, "100s": 0}
  ];

  int index = 0;
  int infoIndex = 0;
  bool changeInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player App",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue[900], 
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: 300,
            child: changeInfo
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${info[infoIndex]["name"]}",
                        style: const TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold,
                        
                          
                          ),
                      ),
                      Text(
                        "Age: ${info[infoIndex]["age"]}",
                        style: const TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold,
                          ),
                      ),
                      Text(
                        "Matches: ${info[infoIndex]["matches"]}",
                        style: const TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "T20s: ${info[infoIndex]["t20s"]}",
                        style: const TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                      Text(
                        "50s: ${info[infoIndex]["50s"]}",
                        style: const TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                      Text(
                        "100s: ${info[infoIndex]["100s"]}",
                        style: const TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  )
                : const Text(""),
          ),
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(players[index]),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton.icon(
              onPressed: () {
                if (!changeInfo) {
                  changeInfo = true;
                  setState(() {});
                }
              },
              icon: const Icon(Icons.info), 
              label: const Text("Info"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index < players.length - 1) {
            index++;
            infoIndex++;
            changeInfo = false;
          } else {
            index = 0;
            infoIndex = 0;
            changeInfo = false;
          }
          setState(() {});
        },
        backgroundColor: Colors.blue[700], 
        
        child: const Icon(Icons.forward),
      ),
    );
  }
}
