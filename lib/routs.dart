import 'package:gaamtiime/auth/signup/signup.dart';
import 'package:get/get.dart';
import 'account_information/account_information.dart';
import 'auth/forgotpassword/forgotpassword.dart';
import 'auth/password_reset_success/password_reset_success.dart';
import 'auth/verificationcode_password/verificationcode.dart';
import 'auth/verificationcodeemail/verification_email_success.dart';
import 'auth/verificationcodeemail/verificationcodeemail.dart';
import 'call_video/call_video.dart';
import 'call_voice/call_voice.dart';
import 'change_app_skin/change_app_skin.dart';
import 'change_language/change_language.dart';
import 'change_password_success/change_password_success.dart';
import 'changepassword/changepassword.dart';
import 'combat_information/combat_information.dart';
import 'filter/filter.dart';
import 'filter_location/filter_location.dart';
import 'home/home.dart';
import 'auth/login/login.dart';
import 'home/home_screen/statistics.dart';
import 'medilewere/medilewere.dart';
import 'message_details/message_details.dart';
import 'payment_billings/payment_billings.dart';
import 'player_information/player_information.dart';
import 'schedulegame/schedulegame.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: '/', page: () => const LogIn(), middlewares: [
    MyMedileWere(),
  ]),
  GetPage(
    name: '/login',
    page: () => const LogIn(),
  ),
  GetPage(
    name: '/signup',
    page: () => const SignUp(),
  ),
  GetPage(
    name: '/verificationEmailSuccess',
    page: () => const VerificationEmailSuccess(),
  ),
  GetPage(
    name: '/home',
    page: () => const Home(),
  ),
  GetPage(name: '/forgotpassword', page: () => const ForgotPassword()),
  GetPage(
    name: '/verificationcode',
    page: () => const VerificationCode(),
  ),
  GetPage(
    name: '/verificationcodeemail',
    page: () => const VerificationCodeEmail(),
  ),
  GetPage(
    name: '/passwordresetsuccess',
    page: () => const PasswordResetSuccess(),
  ),
  GetPage(
    name: '/schedulegame',
    page: () => const ScheduleGame(),
  ),
  GetPage(
    name: '/statistics',
    page: () => const Statistics(),
  ),
  GetPage(
    name: '/playerInformation',
    page: () => const PlayerInformation(),
  ),
  GetPage(
    name: '/accountInformation',
    page: () => const AccountInformation(),
  ),
  GetPage(
    name: '/changeAppSkin',
    page: () => const ChangeAppSkin(),
  ),
  GetPage(
    name: '/changeLanguage',
    page: () => const ChangeLanguage(),
  ),
  GetPage(
    name: '/paymentBillings',
    page: () => const PaymentBillings(),
  ),
  GetPage(
    name: '/filter',
    page: () => const Filter(),
  ),
  GetPage(
    name: '/filter',
    page: () => const Filter(),
  ),
  GetPage(
    name: '/filterLocation',
    page: () => const FilterLocation(),
  ),
  GetPage(
    name: '/changepassword',
    page: () => const ChangePassword(),
  ),
  GetPage(
    name: '/combatInformation',
    page: () => const CombatInformation(),
  ),
  GetPage(
    name: '/changepasswordsuccess',
    page: () => const ChangePasswordSuccess(),
  ),
  GetPage(
    name: '/messageDetails',
    page: () => const MessageDetails(),
  ),
  GetPage(
    name: '/callVoice',
    page: () => const CallVoice(),
  ),
  GetPage(
    name: '/callVideo',
    page: () => const CallVideo(),
  ),
  // GetPage(name: '/addNote', page: () => const AddNote()),
  // GetPage(name: '/viewEditNote', page: () => const ViewEditNote()),
];
