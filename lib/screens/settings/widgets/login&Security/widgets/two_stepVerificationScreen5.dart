import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/provider/LoginAndSecurityProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../../../../../core/app_AppBar.dart';


// ignore: camel_case_types
class Two_stepVerificationScreen5 extends StatefulWidget {
  const Two_stepVerificationScreen5 ({super.key});

  @override
  State<Two_stepVerificationScreen5> createState() => _Two_stepVerificationScreen5State();
}

// ignore: camel_case_types
class _Two_stepVerificationScreen5State extends State<Two_stepVerificationScreen5> {
  @override
  void initState() {
    super.initState();
    context.read<LoginAndSecurityProvider>().statTimer(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Two-step verification', routeName: 'two_stepVerification4',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Enter the 6 digit code",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Please confirm your account by entering the \nauthorization code sen to ****-****-7234",
                  style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400,color: AppColors.neutral500),
                ),
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            Row(
              children: [
                const SizedBox(width: 24,),
                Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  controller: context.watch<LoginAndSecurityProvider>().state.code1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }else if(value.isEmpty){
                      FocusScope.of(context).unfocus();
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary500),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.neutral400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
                const SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: context.watch<LoginAndSecurityProvider>().state.code2,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }else if(value.isEmpty){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: context.watch<LoginAndSecurityProvider>().state.code3,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }else if(value.isEmpty){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: context.watch<LoginAndSecurityProvider>().state.code4,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }else if(value.isEmpty){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: context.watch<LoginAndSecurityProvider>().state.code5,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }else if(value.isEmpty){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: context.watch<LoginAndSecurityProvider>().state.code6,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).unfocus();
                      }else if(value.isEmpty){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
            ],),

            const SizedBox(height: 18,),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Resend code ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.neutral400),
                ),
                Text(
                  "${context.watch<LoginAndSecurityProvider>().state.timerLeft}s",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: AppColors.primary500),
                ),
                const SizedBox(
                  width: 60,
                ),
              ],
            ),
            const SizedBox(
              height: 468,
            ),

            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  context.read<LoginAndSecurityProvider>().verify(context);
                },
                child: Text(
                  "Verify",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ), // Email
          ],
        ),
      ),
    );
  }
}
