import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ScheduleGameController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController gameName;
  late TextEditingController description;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  Rx<DateTime> initialDate = DateTime.now().obs;
  RxInt maxLines = 1.obs;
  FocusNode focusNode = FocusNode();
  String startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  String endTime = '10:30 AM';
  List<String> category = [
    "Racing",
    "Football",
    "Soccer",
    "Adventure",
    'Action',
    'Horror',
    'Simulation',
    'RPG',
    'Strategy',
    'Sports',
    'Puzzle',
    'Arcade',
    'Fighting'
  ];
  List<String> categoryValue = [
    "Racing",
    "Football",
    "Soccer",
    "Adventure",
    'Action',
    'Horror',
    'Simulation',
    'RPG',
    'Strategy',
    'Sports',
    'Puzzle',
    'Arcade',
    'Fighting'
  ];
  final List<String> addresses = [
    'USA - New York',
    'Canada - Toronto',
    'United Kingdom - London',
    'Germany - Berlin',
    'France - Paris',
    'Australia - Sydney',
    'Japan - Tokyo',
    'Brazil - Rio de Janeiro',
    'India - Mumbai',
    'China - Beijing',
    'Russia - Moscow',
    'Spain - Madrid',
    'Italy - Rome',
    'South Africa - Cape Town',
    'Mexico - Mexico City',
    'Argentina - Buenos Aires',
    'Netherlands - Amsterdam',
    'Switzerland - Zurich',
    'Sweden - Stockholm',
    'Norway - Oslo',
    'Denmark - Copenhagen',
    'Finland - Helsinki',
    'Poland - Warsaw',
    'Portugal - Lisbon',
    'Greece - Athens',
    'Turkey - Istanbul',
    'Saudi Arabia - Riyadh',
    'United Arab Emirates - Dubai',
    'Egypt - Cairo',
    'Morocco - Casablanca',
    'Kenya - Nairobi',
    'South Korea - Seoul',
    'Singapore - Singapore City',
    'Thailand - Bangkok',
    'Indonesia - Jakarta',
    'Malaysia - Kuala Lumpur',
    'Vietnam - Ho Chi Minh City',
    'Philippines - Manila',
    'New Zealand - Auckland',
    'Israel - Tel Aviv',
    'Ireland - Dublin',
    'Austria - Vienna',
    'Belgium - Brussels',
    'Colombia - Bogota',
    'Peru - Lima',
    'Chile - Santiago',
    'Ecuador - Quito',
    'Venezuela - Caracas',
    'Czech Republic - Prague',
    'Hungary - Budapest',
    'Romania - Bucharest',
    'Bulgaria - Sofia',
    'Ukraine - Kiev',
    'Croatia - Zagreb',
    'Serbia - Belgrade',
    'Slovenia - Ljubljana',
    'Slovakia - Bratislava',
    'Albania - Tirana',
    'Bosnia and Herzegovina - Sarajevo',
    'Montenegro - Podgorica',
    'Macedonia - Skopje',
    'Lithuania - Vilnius',
    'Latvia - Riga',
    'Estonia - Tallinn',
    'Iceland - Reykjavik',
    'Cyprus - Nicosia',
    'Malta - Valletta',
    'Luxembourg - Luxembourg City',
    'Liechtenstein - Vaduz',
    'Andorra - Andorra la Vella',
    'Monaco - Monaco',
    'San Marino - San Marino',
    'Gibraltar - Gibraltar',
    'Fiji - Suva',
    'Tonga - Nuku\'alofa',
    'Samoa - Apia',
    'Bahrain - Manama',
    'Kuwait - Kuwait City',
    'Oman - Muscat',
    'Qatar - Doha',
    'Jordan - Amman',
    'Lebanon - Beirut',
    'Palestine - Ramallah',
    'Iraq - Baghdad',
    'Iran - Tehran',
    'Syria - Damascus',
    'Yemen - Sana\'a',
    'Afghanistan - Kabul',
    'Pakistan - Islamabad',
    'Bangladesh - Dhaka',
    'Nepal - Kathmandu',
    'Sri Lanka - Colombo',
    'Maldives - Male',
    'Myanmar - Naypyidaw',
    'Laos - Vientiane',
    'Cambodia - Phnom Penh',
    'Mongolia - Ulaanbaatar',
    'Kazakhstan - Nur-Sultan',
    'Uzbekistan - Tashkent',
    'Kyrgyzstan - Bishkek',
    'Tajikistan - Dushanbe',
    'Turkmenistan - Ashgabat',
    'Georgia - Tbilisi',
    'Armenia - Yerevan',
    'Azerbaijan - Baku',
    'Greenland - Nuuk',
    'Faroe Islands - Tórshavn',
  ];
  final List<String> addressesValue = [
    'USA - New York',
    'Canada - Toronto',
    'United Kingdom - London',
    'Germany - Berlin',
    'France - Paris',
    'Australia - Sydney',
    'Japan - Tokyo',
    'Brazil - Rio de Janeiro',
    'India - Mumbai',
    'China - Beijing',
    'Russia - Moscow',
    'Spain - Madrid',
    'Italy - Rome',
    'South Africa - Cape Town',
    'Mexico - Mexico City',
    'Argentina - Buenos Aires',
    'Netherlands - Amsterdam',
    'Switzerland - Zurich',
    'Sweden - Stockholm',
    'Norway - Oslo',
    'Denmark - Copenhagen',
    'Finland - Helsinki',
    'Poland - Warsaw',
    'Portugal - Lisbon',
    'Greece - Athens',
    'Turkey - Istanbul',
    'Saudi Arabia - Riyadh',
    'United Arab Emirates - Dubai',
    'Egypt - Cairo',
    'Morocco - Casablanca',
    'Kenya - Nairobi',
    'South Korea - Seoul',
    'Singapore - Singapore City',
    'Thailand - Bangkok',
    'Indonesia - Jakarta',
    'Malaysia - Kuala Lumpur',
    'Vietnam - Ho Chi Minh City',
    'Philippines - Manila',
    'New Zealand - Auckland',
    'Israel - Tel Aviv',
    'Ireland - Dublin',
    'Austria - Vienna',
    'Belgium - Brussels',
    'Colombia - Bogota',
    'Peru - Lima',
    'Chile - Santiago',
    'Ecuador - Quito',
    'Venezuela - Caracas',
    'Czech Republic - Prague',
    'Hungary - Budapest',
    'Romania - Bucharest',
    'Bulgaria - Sofia',
    'Ukraine - Kiev',
    'Croatia - Zagreb',
    'Serbia - Belgrade',
    'Slovenia - Ljubljana',
    'Slovakia - Bratislava',
    'Albania - Tirana',
    'Bosnia and Herzegovina - Sarajevo',
    'Montenegro - Podgorica',
    'Macedonia - Skopje',
    'Lithuania - Vilnius',
    'Latvia - Riga',
    'Estonia - Tallinn',
    'Iceland - Reykjavik',
    'Cyprus - Nicosia',
    'Malta - Valletta',
    'Luxembourg - Luxembourg City',
    'Liechtenstein - Vaduz',
    'Andorra - Andorra la Vella',
    'Monaco - Monaco',
    'San Marino - San Marino',
    'Gibraltar - Gibraltar',
    'Fiji - Suva',
    'Tonga - Nuku\'alofa',
    'Samoa - Apia',
    'Bahrain - Manama',
    'Kuwait - Kuwait City',
    'Oman - Muscat',
    'Qatar - Doha',
    'Jordan - Amman',
    'Lebanon - Beirut',
    'Palestine - Ramallah',
    'Iraq - Baghdad',
    'Iran - Tehran',
    'Syria - Damascus',
    'Yemen - Sana\'a',
    'Afghanistan - Kabul',
    'Pakistan - Islamabad',
    'Bangladesh - Dhaka',
    'Nepal - Kathmandu',
    'Sri Lanka - Colombo',
    'Maldives - Male',
    'Myanmar - Naypyidaw',
    'Laos - Vientiane',
    'Cambodia - Phnom Penh',
    'Mongolia - Ulaanbaatar',
    'Kazakhstan - Nur-Sultan',
    'Uzbekistan - Tashkent',
    'Kyrgyzstan - Bishkek',
    'Tajikistan - Dushanbe',
    'Turkmenistan - Ashgabat',
    'Georgia - Tbilisi',
    'Armenia - Yerevan',
    'Azerbaijan - Baku',
    'Greenland - Nuuk',
    'Faroe Islands - Tórshavn',
  ];
  final List<String> duration = [
    "Daily",
    "Weekly",
    "monthly",
    "3 Days",
    "10 Days",
    "2 Weeks",
  ];
  final List<String> durationValue = [
    "Daily",
    "Weekly",
    "monthly",
    "3 Days",
    "10 Days",
    "2 Weeks",
  ];
  final RxBool notificationChecked = false.obs;
  final RxBool emailChecked = false.obs;

  void toggleNotification(bool value) {
    notificationChecked.value = value;
  }

  void toggleEmail(bool value) {
    emailChecked.value = value;
  }

  void calculateMaxLines() {
    final descriiption = description.text;
    final lineCount = descriiption.split(RegExp(r'\n')).length;
    maxLines.value = lineCount;
  }

  getDateFromUser(
    context, {
    required bool isStartData,
    required DateTime firstDate,
  }) async {
    var pickedDate = await showDataPickerMe(context,
        firstDate: firstDate, initialDate: initialDate.value);
    if (pickedDate == null) {
      // ignore: avoid_print
      print("Data canceld");
    } else if (isStartData == true) {
      startDate = pickedDate;
      initialDate.value = pickedDate;
      endDate = startDate;
      update();
    } else if (isStartData == false) {
      endDate = pickedDate;
      update();
    }
  }

  showDataPickerMe(context,
      {required DateTime firstDate, required DateTime initialDate}) async {
    return await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: DateTime(2121));
  }

  getTimeFromUser(context, {required bool isStartTime}) async {
    var pickedTime = await showTimePickerMe(context);
    String formatedTime = pickedTime.format(context);
    if (pickedTime == null) {
      // ignore: avoid_print
      print("Time canceld");
    } else if (isStartTime == true) {
      startTime = formatedTime;
      update();
    } else if (isStartTime == false) {
      endTime = formatedTime;
      update();
    }
  }

  showTimePickerMe(context) async {
    return await showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          hour: int.parse(startTime.split(":")[0]),
          minute: int.parse(startTime.split(":")[1].split(" ")[0]),
        ));
  }

  @override
  void onInit() {
    gameName = TextEditingController();
    description = TextEditingController();

    super.onInit();
  }
}
