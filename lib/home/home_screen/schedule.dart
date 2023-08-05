import 'package:flutter/material.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import '../../static/imges.dart';
import '../widget/body_schedule.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColorLight,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BodySchedule(
              title: 'Schedule',
              supTitle:
                  'Easily schedule event/games then find like minded players for battle. You up for it?',
              imageName: kSchedule,
              nameVictor: kVector,
              onTap: () {
                Get.toNamed('/schedulegame');
              },
            ),
            BodySchedule(
              title: 'Statistics',
              supTitle:
                  'All data from previous and upcoming games can be found here ',
              imageName: kStatistics,
              nameVictor: kEllipse1,
              isEllipse: true,
              onTap: () {},
            ),
            BodySchedule(
              title: 'Schedule',
              supTitle:
                  'Easily schedule event/games then find like minded players for battle. You up for it?',
              imageName: kDiscover,
              onTap: () {},
            ),
            BodySchedule(
              title: 'Schedule',
              supTitle:
                  'Easily schedule event/games then find like minded players for battle. You up for it?',
              imageName: kChat,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
