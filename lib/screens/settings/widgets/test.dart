import 'package:flutter/material.dart';
import 'package:jobsque/screens/settings/widgets/testProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Column(
                children: [
                  const SizedBox(height: 330,),
                  Text(
                    "${context.watch<TestProvider>().state.counter}"
                    ,style: TextStyle(
                      color : context.read<TestProvider>().Text_color(Provider.of<TestProvider>(context, listen: false).state.counter),
                      fontSize: 70),),
                  const SizedBox(height: 20,),
                  IconButton(onPressed: (){
                    context.read<TestProvider>().addCounter();
                  }, icon: const Icon(Icons.add_circle,size: 50,)),
                  const SizedBox(height: 30,),
                  TextButton(onPressed: (){
                    context.read<TestProvider>().setCounter(Provider.of<TestProvider>(context, listen: false).state.counter);
                  }, child: const Text("Save in sharedPrefrance",style: TextStyle(fontSize: 30),))
                ],
              ),
      ),
    );
  }

}
