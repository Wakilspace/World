import 'package:flutter/material.dart';
import 'package:world_time/services/worldtime.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  List <WorldTime> locations =[
    WorldTime(),
  ];

  @override
  void initState() {
    
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text('choose location screen'),
    );
  }
}