import 'package:flutter/material.dart';


class CheckNetworkScreen extends StatelessWidget {
  const CheckNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Check network 🌎",style: TextStyle(fontSize: 22,),),
      ),
    );
  }

}
