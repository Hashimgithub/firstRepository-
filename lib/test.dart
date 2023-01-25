import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List modeData = [
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
    {
      'modeName': 'VAN',
      'modeTime': '3 min',
      'modeIcon': Icons.android,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: modeData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Column(
              children: [
                Text(modeData[index]['modeTime']),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        40.0,
                      ),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(modeData[index]['modeIcon']),
                    color: Colors.black38,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
