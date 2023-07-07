import 'package:jobsque/screens/Messages/MessagesScreen.dart';
import 'package:jobsque/screens/Messages/Widgets/UnreadWidget.dart';
import 'package:jobsque/screens/Messages/Widgets/chatWidget.dart';
import 'package:jobsque/screens/Messages/provider/MessagesProvider.dart';
import 'package:jobsque/screens/applied/appliedScreen.dart';
import 'package:jobsque/screens/applied/widgets/applySuccesfullyWidget.dart';
import 'package:jobsque/screens/applied/widgets/bioDataWidget.dart';
import 'package:jobsque/screens/applied/widgets/companyWidget.dart';
import 'package:jobsque/screens/applied/widgets/desicriptionWidget.dart';
import 'package:jobsque/screens/applied/widgets/peopleWidget.dart';
import 'package:jobsque/screens/applied/widgets/typeOfWorkWidget.dart';
import 'package:jobsque/screens/applied/widgets/uploadPortfolioWidget.dart';
import 'package:jobsque/screens/auth/createAccontScreen.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
import 'package:jobsque/screens/auth/widgets/forgetPasswordScreen.dart';
import 'package:jobsque/screens/auth/widgets/changedSuccesfullyScreen.dart';
import 'package:jobsque/screens/auth/widgets/checkEmailScreen.dart';
import 'package:jobsque/screens/auth/widgets/createPasswordScreen.dart';
import 'package:jobsque/screens/auth/widgets/locationWidget.dart';
import 'package:jobsque/screens/auth/widgets/setupWidget.dart';
import 'package:jobsque/screens/auth/widgets/work/workScreen.dart';
import 'package:jobsque/screens/home/widgets/bottomNavigationScreen.dart';
import 'package:jobsque/screens/home/homeScreen.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:jobsque/screens/home/widgets/SearchNotFoundWidget.dart';
import 'package:jobsque/screens/home/widgets/searchScreen.dart';
import 'package:jobsque/screens/home/widgets/searchResultsWidget.dart';
import 'package:jobsque/screens/onboarding/pageViewScreen.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewProvider.dart';
import 'package:jobsque/screens/onboarding/widgets/GetStartedScreen.dart';
import 'package:jobsque/screens/onboarding/widgets/onboarding2Screen.dart';
import 'package:jobsque/screens/onboarding/widgets/onboardingScreen.dart';
import 'package:jobsque/screens/onboarding/widgets/splashWidget.dart';
import 'package:jobsque/screens/save/provider/savedProvider.dart';
import 'package:jobsque/screens/save/savedScreen.dart';
import 'package:jobsque/screens/settings/profileScreen.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:jobsque/screens/settings/widgets/AccesibilityScreen.dart';
import 'package:jobsque/screens/settings/widgets/EditProfileScreen.dart';
import 'package:jobsque/screens/settings/widgets/HelpCenterScreen.dart';
import 'package:jobsque/screens/settings/widgets/LangaugeScreen.dart';
import 'package:jobsque/screens/settings/widgets/NotificationScreen.dart';
import 'package:jobsque/screens/settings/widgets/PortfolioScreen.dart';
import 'package:jobsque/screens/settings/widgets/PrivacyPolicyScreen.dart';
import 'package:jobsque/screens/settings/widgets/TermsAndConditionsScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/LoginAndSecurityScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/provider/LoginAndSecurityProvider.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/changePasswordScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/emailAddressScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/phoneNumberScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/two_stepVerificationScreen.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/two_stepVerificationScreen2.dart';
import 'package:jobsque/screens/auth/widgets/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/screens/settings/widgets/test.dart';
import 'package:jobsque/screens/settings/widgets/testProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [

          ChangeNotifierProvider<TestProvider>(
              create: (context) => TestProvider()..getCounter()),

          ChangeNotifierProvider<PageViewProvider>(
              create: (context) => PageViewProvider()),

          ChangeNotifierProvider<CreateAccountProvider>(
              create: (context) => CreateAccountProvider()..init()),

          ChangeNotifierProvider<MessagesProvider>(
              create: (context) => MessagesProvider()),

          ChangeNotifierProvider<SavedProvider>(
              create: (context) => SavedProvider()),

          ChangeNotifierProvider<HomeProvider>(
              create: (context) => HomeProvider()..init()),

          ChangeNotifierProvider<ProfileProvider>(
              create: (context) => ProfileProvider()),

          ChangeNotifierProvider<LoginAndSecurityProvider>(
              create: (context) => LoginAndSecurityProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

            routes: {         
              "/": (context) => const SplashWidget(),

              "TestScreen": (context) => TestScreen(),

              "onboarding": (context) => const OnboardingScreen(),
              "onboarding2": (context) => const Onboarding2Screen(),
              "getStarted": (context) => const GetStartedScreen(),


              "login": (context) => const LoginScreen(),
              "changedSuccessfully": (context) => const ChangedSuccesfullyScreen(),
              "checkEmail": (context) => const CheckEmailScreen(),
              "forgetPassword": (context) => const ForgetPasswordScreen(),
              "createPassword": (context) => const CreatePasswordScreen(),


              "createAccount": (context) =>  const CreateAccountScreen(),
              "account": (context) => const SetupWidget(),
              "work": (context) => const WorkScreen(),
              "location": (context) => const LocationScreen(),
              "pageView": (context) => const PageViewScreen(),


              "bottomNavigation": (context) => const BottomNavigationScreen(),
              "home": (context) => const HomeScreen(),
              "search": (context) => const SearchScreen(),
              "searchResults": (context) => const SearchResultsWidget(),
              "searchNotFound": (context) => const SearchNotFoundWidget(),


              "applied": (context) => const AppliedScreen(),
              "descriptionWidget": (context) => const DesicriptionWidget(),
              "companyWidget": (context) => const CompanyWidget(),
              "peopleWidget": (context) => const PeopleWidget() ,
              "typeOfWorkWidget": (context) =>  const TypeOfWorkWidget(),
              "bioDataWidget": (context) => const BioDataWidget(),
              "uploadPortfolioWidget": (context) => const UploadPortfolioWidget(),
              "applySuccesfullyWidget": (context) => const ApplySuccesfullyWidget(),


              "saved": (context) => const SavedScreen(),


              "messages": (context) => const MessageScreen(),
              "chatWidget": (context) => const ChatWidget(),
              "unreadWidget": (context) => const UnreadWidget(),


              "profile": (context) => ProfileScreen(),
              "accessibility": (context) => AccesibilityScreen(),
              "editProfile": (context) => const EditProfileScreen(),
              "helpCenter": (context) => HelpCenterScreen(),
              "language": (context) => const LangaugeScreen(),
              "notification": (context) => NotificationScreen(),
              "portfolio": (context) =>  PortfolioScreen(),
              "privacyPolicy": (context) => PrivacyPolicyScreen(),
              "termsAndConditions": (context) => TermsAndConditionsScreen(),


              "loginAndSecurity": (context) => const LoginAndSecurityScreen(),
              "changePassword": (context) => const ChangePasswordScreen(),
              "phoneNumber": (context) => const PhoneNumberScreen() ,
              "emailAddress": (context) =>  const EmailAddressScreen(),
              "two_stepVerification": (context) => const Two_stepVerificationScreen(),
              "two_stepVerification2": (context) => const Two_stepVerificationScreen2(),

            }),
      );
    });
  }
}
