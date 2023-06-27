import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/widgets/SearchScreen/provider/searchProvider.dart';
import 'package:jobsque/screens/home/widgets/SearchScreen/provider/searchState.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Core/app_colors.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  SearchState state = SearchState();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
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
                  IconButton(onPressed: (){
                    Navigator.of(context).pushNamed("bottomNavigation");
                  }, icon: const Icon(Iconsax.arrow_left)),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: TextField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            color: Colors.black87,
                            size: 22,
                          ),
                          hintText: "Type something...",
                          border: InputBorder.none),
                      autofocus: true,
                      controller: state.searchValueController,
                      onEditingComplete: (){
                        if(state.searchValueController.text.isNotEmpty) {
                          addToHistory(state.searchValueController.text);
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil("searchResults", (route) => false);
                        }
                      }
                      // onChanged: (value){
                    ),
                  ),
                ],
              ),
              Column(
                children: [
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
                    height: 300,
                    width: double.infinity,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: state.searchList.length,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Iconsax.clock,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                    onTap:(){
                                      setState(() {
                                        addToResult(state.searchList[i]);
                                      });
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil("searchResults", (route) => false);
                                      },
                                    child: SizedBox(
                                      width: 280,
                                      height: 20,
                                      child: Text(
                                        state.searchList[i],
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        deleteFromHistory(state.searchList[i]);},
                                      icon: const Icon(
                                        Iconsax.close_circle,
                                        size: 24,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
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
                          "Popular searches",style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: state.suggestions.length,
                        itemBuilder: (context, i) {
                          state.suggestions[i];
                          return Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Iconsax.search_status,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 280,
                                    height: 20,
                                    child: Text(
                                      state.suggestions[i],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: (){
                                        setState(() {
                                          addToResult(state.suggestions[i]);});
                                            Navigator.of(context)
                                             .pushNamedAndRemoveUntil("searchResults", (route) => false);
                                      },
                                      icon: Icon(
                                        Iconsax.arrow_right_2,
                                        size: 24,
                                        color: AppColors.primary500,
                                      )),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
