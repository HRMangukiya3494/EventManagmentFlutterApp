import 'package:event_management/views/screens/BookingsPage.dart';
import 'package:event_management/views/screens/BottomNavigationPage.dart';
import 'package:event_management/views/screens/HomePage.dart';
import 'package:event_management/views/screens/IntroScreen.dart';
import 'package:event_management/views/screens/MyFavouritesPage.dart';
import 'package:event_management/views/screens/ProfilePage.dart';
import 'package:event_management/views/screens/SelectOptionPage.dart';
import 'package:event_management/views/screens/credential/ForgetPasswordPage.dart';
import 'package:event_management/views/screens/credential/PrivacyPolicyPage.dart';
import 'package:event_management/views/screens/credential/SignInScreen.dart';
import 'package:event_management/views/screens/credential/SignUpPage.dart';
import 'package:event_management/views/screens/credential/TermsPage.dart';
import 'package:event_management/views/screens/profile/AddNewCardPage.dart';
import 'package:event_management/views/screens/profile/EditProfilePage.dart';
import 'package:event_management/views/screens/profile/NotificationsPage.dart';
import 'package:event_management/views/screens/profile/PaymentMethodsPage.dart';
import '../screens/SplashScreen.dart';
import 'package:get/get.dart';
import '../screens/credential/OTPVerificationPage.dart';

class AppRoutes {
  static const String SPLASH = "/";
  static const String INTRO = "/intro_page";
  static const String SELECTOPTION = "/select_option_page";
  static const String SIGNINSCREEN = "/signing_screen";
  static const String FORGET = "/forget_page";
  static const String OTPVEREFICATION = "/otp_verification_page";
  static const String SIGNUP = "/signup_page";
  static const String PRIVACYPOLICY = "/privacy_policy_page";
  static const String TERMSSERVICE = "/terms_of_service_page";
  static const String BOTTOMNAVIIGATION = "/bottom_navigation";
  static const String HOME = "/home_page";
  static const String MYFAVOURITES = "/my_favourites_page";
  static const String BOOKINGS = "/bookings_page";
  static const String PROFILE = "/profile_page";
  static const String EDITPROFILE = "/edit_profile_page";
  static const String MANAGENOTIFICATIONS = "/manage_notifications_page";
  static const String PAYMENTMETHODS = "/payment_methods_page";
  static const String ADDNEWCARD = "/add_new_card_page";

  static final routes = [
    GetPage(
      name: SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: INTRO,
      page: () => IntroScreen(),
    ),
    GetPage(
      name: SELECTOPTION,
      page: () => SelectOptionPage(),
    ),
    GetPage(
      name: SIGNINSCREEN,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: FORGET,
      page: () => ForgetPasswordPage(),
    ),
    GetPage(
      name: OTPVEREFICATION,
      page: () => OTPVerificationPage(),
    ),
    GetPage(
      name: SIGNUP,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: PRIVACYPOLICY,
      page: () => PrivacyPolicyPage(),
    ),
    GetPage(
      name: TERMSSERVICE,
      page: () => TermsPage(),
    ),
    GetPage(
      name: BOTTOMNAVIIGATION,
      page: () => BottomNavigationPage(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: MYFAVOURITES,
      page: () => MyFavouritesPage(),
    ),
    GetPage(
      name: BOOKINGS,
      page: () => BookingsPage(),
    ),
    GetPage(
      name: PROFILE,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: EDITPROFILE,
      page: () => EditProfilePage(),
    ),
    GetPage(
      name: MANAGENOTIFICATIONS,
      page: () => NotificationsPage(),
    ),
    GetPage(
      name: PAYMENTMETHODS,
      page: () => PaymentMethodsPage(),
    ),
    GetPage(
      name: ADDNEWCARD,
      page: () => AddNewCardPage(),
    ),
  ];
}
