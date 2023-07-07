import 'package:flutter/material.dart';
import '../../../Core/app_colors.dart';

class SetupWidget extends StatelessWidget {
  const SetupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 35,),
          Row(children: [
            const SizedBox(width: 10,),
            IconButton(onPressed: (){
              Navigator.of(context).pushNamed("location");
            }, icon: const Icon(Icons.keyboard_backspace_sharp))
          ],), // icon back
          const SizedBox(height: 60,),
          
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/images/created Successfully/createdSuccessfully.png"),
          ), //image
          
          const SizedBox(height: 30,),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text("Your account has been set up!",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
          ),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text("We have customized feeds according to your",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
          ),
          const SizedBox(height: 5,),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text("preferences",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
          ),
          const SizedBox(height: 220,),
          
          SizedBox(
            width: 345,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {
                Navigator.of(context).pushNamed("bottomNavigation");
              },
              child: Text("Get Started",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
          ),  //next
        ],
      ),
    );
  }
}
