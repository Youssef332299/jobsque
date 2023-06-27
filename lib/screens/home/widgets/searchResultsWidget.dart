import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../../../Core/routes.dart';
import 'SearchScreen/provider/searchState.dart';

class SearchResultsWidget extends StatefulWidget {
  const SearchResultsWidget({Key? key}) : super(key: key);

  @override
  State<SearchResultsWidget> createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {
  SearchState state = SearchState();

  void showBottomSheet2(context) {
    showModalBottomSheet(
        // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context){
          return SizedBox(
            height: 300,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 3,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  child: Text("youssef",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 150,
                  child: Wrap(
                    spacing: 3.5,
                    runSpacing: 10,
                    children: [
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          );
        });
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 810,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const SizedBox(width: 9,),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("searchResults");
                        }, icon: const Icon(Iconsax.arrow_left)),
                    const SizedBox(
                      width: 98,
                    ),
                    const Text(
                      "Set Filter",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    TextButton(onPressed: (){
                      if(state.isReset == false){
                        setState(() {
                          state.isReset = true;
                          state.jobTittleController.text = "";
                          state.locationController.text = "";
                          // state.sa
                        });
                      }
                    }, child: Text(
                      "Reset",style: TextStyle(color: AppColors.primary500,fontSize: 16),
                    ))
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
                      "Job Tittle",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: TextFormField(
                    controller: state.jobTittleController,
                    onChanged: (value){
                      if(value.isNotEmpty && state.isReset == true){
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.briefcase,color: AppColors.neutral900,),
                      border: InputBorder.none,
                    ),
                  ),
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
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: TextFormField(
                    controller: state.locationController,
                    onChanged: (value){
                      if(value.isNotEmpty && state.isReset == true){
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.location,color: AppColors.neutral900,),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Salary",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Center(child: Icon(Iconsax.dollar_circle)),
                      const SizedBox(width: 10,),
                      SizedBox(
                        width: 300,
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          isDense: true,
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColors.neutral600,
                              fontWeight: FontWeight.w500),
                          value: state.chosenItem,
                          decoration: const InputDecoration(border: InputBorder.none),
                          icon: const Icon(Iconsax.arrow_down_14),
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text("5K - 10K",style: TextStyle(fontSize: 16),),
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text("10K - 20K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text("15K - 30K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text("25K - 40K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 4,
                              child: Text("35K - 60K",style: TextStyle(fontSize: 16)),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              state.chosenItem = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Job Type",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,),
                SizedBox(
                  width: 350,
                  height: 260,
                  child: Wrap(
                    spacing: 3.5,
                    runSpacing: 10,
                    children: [
                      InkWell(onTap: (){
                            setState(() {
                              state.isSelected == true
                                ?state.isSelected = false
                                  :state.isSelected = true;
                            });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                            child: Text(
                                  "Full Time",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400
                                  ),
                                ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        setState(() {
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        });
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
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
                      Navigator.pop(context);
                      showBottomSheet2(context);
                    },
                    child: Text(
                      "Show result",
                      style:
                      TextStyle(fontSize: 18, color: AppColors.neutral100),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  returnResult()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState((){
      state.result = sharedPreferences.getString("result")!;
      state.jobTittleController.text = state.result;
    });
  }

  @override
  void initState() {
    super.initState();
     returnResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("bottomNavigation");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12)),
                  child: Row(
                    children: [
                      const SizedBox(width: 12,),
                      const Icon(
                        Iconsax.search_normal_1,
                        color: Colors.black87,
                        size: 22,
                      ),
                       const SizedBox(width: 10,),
                       SizedBox(
                        width: 200,
                        child: Text(state.result,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(width: 5,),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                Routes.search, (route) => false);},
                          icon: const Icon(
                            Iconsax.close_circle,
                            size: 20,
                            // color: Colors.red
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                   // SizedBox(height: 10,),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(onPressed: (){
                    showBottomSheet(context);
                  }, icon: const Icon(Iconsax.setting_4)),
                  const SizedBox(
                    width: 10,
                  ), Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        semanticChildCount: 4,
                        itemCount: 9,
                          itemBuilder: (context,i){
                            return Row(
                            children:[
                              Container(
                              height: 45,
                              width: 110,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.primary900),
                              child: Row(
                                children: [
                                  const SizedBox(width: 15,),
                                  const SizedBox(
                                    height: 15,
                                    width: 55,
                                    child: Text(
                                      "Full Time",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                  // SizedBox(width: 5,),
                                  InkWell(onTap: (){},
                                      child: const Icon(Iconsax.arrow_down_1,size: 16,color: Colors.white,))
                                ],
                              ),
                              )] );
                          } ),
                    ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: AppColors.neutral100,
                  border: Border.all(color: AppColors.neutral200)),
              child: const Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Recent searches",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 750,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                      width: 360,
                      height: 110,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/twitte/twitte7.png",
                                      scale: 11,
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UI Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Twitter • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //1
                  const Divider(
                    height: 9,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  SizedBox(
                      width: 360,
                      height: 120,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/vector/discord-mascot.png",
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UX Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Discord • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 72,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //2
                  SizedBox(
                      width: 360,
                      height: 110,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/twitte/twitte7.png",
                                      scale: 11,
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UI Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Twitter • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //1
                  const Divider(
                    height: 9,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  SizedBox(
                      width: 360,
                      height: 120,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/vector/discord-mascot.png",
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UX Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Discord • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 72,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //2

                  const Divider(
                    height: 9,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  SizedBox(
                      width: 360,
                      height: 120,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/vector/discord-mascot.png",
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UX Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Discord • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 72,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //2
                  SizedBox(
                      width: 360,
                      height: 110,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/twitte/twitte7.png",
                                      scale: 11,
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UI Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Twitter • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //1
                  const Divider(
                    height: 9,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  SizedBox(
                      width: 360,
                      height: 120,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/vector/discord-mascot.png",
                                    ),
                                  ),
                                ],
                              ), //Image
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Senior UX Designer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "    Discord • Jakarta, Indonesia",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 72,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.archive_minus,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Fulltime",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent.shade100),
                                child: const Text(
                                  "Senior",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "12K-15K",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "/Month",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )), //2
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
