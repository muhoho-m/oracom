import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:leo/source/screens/user_screens/ora_View_deep.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../constants/name-definations/image_strings.dart';
import '../../constants/name-definations/text_strings.dart';
import '../../welcome/controllers/database_repo/database_interaction.dart';
import '../general_screens/company_brands.dart';

class OraHomePage extends StatefulWidget {
  // static OraHomePage get instance => Get.find();
  const OraHomePage({super.key});

  @override
  State<OraHomePage> createState() => _OraHomePageState();
}

class _OraHomePageState extends State<OraHomePage> {

  // CalendarFormat _oraCalenderFormat = CalendarFormat.month;
  DateTime oraFocusedDay = DateTime.now();
  // DateTime? _oraSelectedDay;

  void _oraViewReportDay(DateTime day, DateTime focusedDay){
    setState(() {
      oraFocusedDay = day;
      Navigator.push(context, MaterialPageRoute(builder: (context) => OraViewDeep(oraDate: oraFocusedDay,)));
    });
  }

  @override
  Widget build(BuildContext context) {

    // final OraHomePageController = Get.put(OraDatabaseRepository);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            // height: 300,
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                // header widget containing logo image and
                // page label texts
                Column(
                  children: [
                    // header image
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image:
                              DecorationImage(image: AssetImage(oraLogoImage))),
                    ),

                    // heading text title and subtitle
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          oraHomePageText,
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          oraByDateOrder,
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
                // TO do lists display by order of dates with the
                // top record being current day
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0,),

                      TableCalendar(
                        headerStyle: const HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                        ),
                          selectedDayPredicate: (day) => isSameDay(day, oraFocusedDay),
                          focusedDay: oraFocusedDay,
                          firstDay: DateTime.utc(2010, 1, 1),
                          lastDay: DateTime.utc(2030, 1, 1),
                        onDaySelected: _oraViewReportDay,
                      ),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => const OraCompanyBrands())
                              );
                            },
                            child: Text(
                              "View All Company Reports",
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
