import 'package:firebase_core/firebase_core.dart';
import 'package:jobsque/screens/Messages/MessagesScreen.dart';
import 'package:jobsque/screens/Messages/Widgets/UnreadWidget.dart';
import 'package:jobsque/screens/Messages/Widgets/chatWidget.dart';
import 'package:jobsque/screens/Messages/provider/MessagesProvider.dart';
import 'package:jobsque/screens/applied/appliedScreen.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:jobsque/screens/applied/widgets/addPortfolio.dart';
import 'package:jobsque/screens/applied/widgets/appliedBioData.dart';
import 'package:jobsque/screens/applied/widgets/appliedTypeOfWork.dart';
import 'package:jobsque/screens/applied/widgets/appliedUploadPortfolio.dart';
import 'package:jobsque/screens/applied/widgets/completeProfile.dart';
import 'package:jobsque/screens/applied/widgets/education.dart';
import 'package:jobsque/screens/applied/widgets/experience.dart';
import 'package:jobsque/screens/applied/widgets/personalDetails.dart';
import 'package:jobsque/screens/auth/createAccontScreen.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
import 'package:jobsque/screens/auth/widgets/forgetPasswordScreen.dart';
import 'package:jobsque/screens/auth/widgets/changedSuccesfullyScreen.dart';
import 'package:jobsque/screens/auth/widgets/checkEmailScreen.dart';
import 'package:jobsque/screens/auth/widgets/createPasswordScreen.dart';
import 'package:jobsque/screens/auth/widgets/work/widgets/locationWidget.dart';
import 'package:jobsque/screens/auth/widgets/setupWidget.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workProvider.dart';
import 'package:jobsque/screens/auth/widgets/work/workScreen.dart';
import 'package:jobsque/screens/home/widgets/applyButton/provider/applyNowProvider.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/applySuccesfullyWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/bioDataWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/companyWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/desicriptionWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/peopleWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/typeOfWorkWidget.dart';
import 'package:jobsque/screens/home/widgets/applyButton/widgets/uploadPortfolioWidget.dart';
import 'package:jobsque/screens/home/widgets/bottomNavigationScreen.dart';
import 'package:jobsque/screens/home/homeScreen.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:jobsque/screens/home/widgets/notification.dart';
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
import 'package:jobsque/screens/settings/widgets/EditAboutWidget.dart';
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
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/two_stepVerificationScreen3.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/two_stepVerificationScreen4.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/widgets/two_stepVerificationScreen5.dart';
import 'package:jobsque/screens/onboarding/widgets/checkNetwork.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await HomeProvider().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Sizer(builder: (context, orientation, deviceType) {

      return MultiProvider(

        providers: [
          ChangeNotifierProvider<LoginAndSecurityProvider>(
              create: (context) => LoginAndSecurityProvider()..init(context)),
          ChangeNotifierProvider<CreateAccountProvider>(
              create: (context) => CreateAccountProvider()..init()),
          ChangeNotifierProvider<ProfileProvider>(
              create: (context) => ProfileProvider()..init()),
          ChangeNotifierProvider<HomeProvider>(
              create: (context) => HomeProvider()..init(context)),
          ChangeNotifierProvider<ApplyNowProvider>(
              create: (context)  => ApplyNowProvider()..init()),
          ChangeNotifierProvider<MessagesProvider>(
              create: (context) => MessagesProvider()..init()),
          ChangeNotifierProvider<AppliedProvider>(
              create: (context) => AppliedProvider()..init(context)),
          ChangeNotifierProvider<SavedProvider>(
              create: (context)  => SavedProvider()..init()),
          ChangeNotifierProvider<PageViewProvider>(
              create: (context) => PageViewProvider()),
          ChangeNotifierProvider<WorkProvider>(
              create: (context) => WorkProvider()),
        ],
        child: MaterialApp(
          color: Colors.white,
          debugShowCheckedModeBanner: false,

            routes: {         
              "checkNetwork": (context) => const CheckNetworkScreen(),
              "onboarding2": (context) => const Onboarding2Screen(),
              "getStarted": (context) => const GetStartedScreen(),
              "onboarding": (context) => const OnboardingScreen(),
              "/": (context) => const SplashWidget(),


              "changedSuccessfully": (context) => const ChangedSuccesfullyScreen(),
              "createPassword": (context) => const CreatePasswordScreen(),
              "forgetPassword": (context) => const ForgetPasswordScreen(),
              "checkEmail": (context) => const CheckEmailScreen(),
              "login": (context) => const LoginScreen(),


              "createAccount": (context) =>  const CreateAccountScreen(),
              "location": (context) => const LocationScreen(),
              "pageView": (context) => const PageViewScreen(),
              "setup": (context) => const SetupWidget(),
              "work": (context) => const WorkScreen(),


              "bottomNavigation": (context) => const BottomNavigationScreen(),
              "notificationWidget": (context) => const NotificationWidget(),
              "searchResults": (context) => const SearchResultsWidget(),
              "notification": (context) => NotificationScreen(),
              "search": (context) => const SearchScreen(),
              "home": (context) => const HomeScreen(),


              "applySuccesfullyWidget": (context) => const ApplySuccesfullyWidget(),
              "uploadPortfolioWidget": (context) => const UploadPortfolioWidget(),
              "descriptionWidget":  (context) => const DesicriptionWidget(),
              "typeOfWorkWidget": (context) =>  const TypeOfWorkWidget(),
              "companyWidget":  (context) => const CompanyWidget(),
              "bioDataWidget": (context) => const BioDataWidget(),
              "peopleWidget": (context) => const PeopleWidget() ,


              "appliedUploadPortfolio": (context) => const AppliedUploadPortfolio(),
              "appliedTypeOfWork": (context) => const AppliedTypeOfWork(),
              "completeProfile": (context) => const CompleteProfile(),
              "appliedBioData": (context) => const AppliedBioData(),
              "applied":   (context)  => const AppliedScreen(),
              "experience": (context) => const Experience(),
              "education": (context) => const Education(),
              "personalDetails": (context) => const PersonalDetails(),
              "addPortfolio": (context) => const AddPortfolio(),


              "saved": (context) => const SavedScreen(),


              "unreadWidget": (context) => const UnreadWidget(),
              "messages": (context) => const MessageScreen(),
              "chatWidget": (context) => const ChatWidget(),


              "termsAndConditions": (context) => const TermsAndConditionsScreen(),
              "privacyPolicy": (context) => const PrivacyPolicyScreen(),
              "editProfile": (context) => const EditProfileScreen(),
              "helpCenter":  (context) => const HelpCenterScreen(),
              "accessibility":  (context) => AccesibilityScreen(),
              "portfolio": (context) =>  const PortfolioScreen(),
              "language": (context) => const LangaugeScreen(),
              "about":  (context) => const EditAboutWidget(),
              "profile": (context) => const ProfileScreen(),


              "two_stepVerification4": (context) =>  const Two_stepVerificationScreen4(),
              "two_stepVerification5": (context) => const Two_stepVerificationScreen5(),
              "two_stepVerification2": (context) => const Two_stepVerificationScreen2(),
              "two_stepVerification3": (context) => const Two_stepVerificationScreen3(),
              "two_stepVerification": (context) => const Two_stepVerificationScreen(),
              "loginAndSecurity": (context) => const LoginAndSecurityScreen(),
              "changePassword": (context) => const ChangePasswordScreen(),
              "emailAddress": (context) =>  const EmailAddressScreen(),
              "phoneNumber": (context) => const PhoneNumberScreen(),

            }),
      );
    });
  }
}
