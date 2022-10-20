import 'package:design_nutrition_part/steps_page.dart';
import 'package:design_nutrition_part/weight_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'line_chart_steps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromRGBO(255, 255, 255, 1),
            secondary: const Color(0xFFFFC107),
            background: const Color.fromRGBO(223, 213, 229, 1.0)),
        scaffoldBackgroundColor: const Color.fromRGBO(249, 248, 253, 1.0),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const WeightPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 100, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://source.unsplash.com/50x50/?portrait',
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Casey Kapol',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Your Activities',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                            IconData(0xf0107, fontFamily: 'MaterialIcons'),
                            color: Colors.green),
                        title: Text(
                          'Calories',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        minLeadingWidth: 2,
                      ),
                      CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 13.0,
                        animation: true,
                        percent: 0.7,
                        center: const Text(
                          "410\nKcal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.green,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 12, left: 10),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '1280 Kcal',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Daily Goal',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          IconData(0xe03b, fontFamily: 'MaterialIcons'),
                          color: Color.fromRGBO(248, 194, 79, 1.0),
                        ),
                        title: Text(
                          'Sleeps',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        minLeadingWidth: 2,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.5,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.9,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.6,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.4,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.3,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.8,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                            LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: 0.4,
                                barRadius: const Radius.circular(16),
                                progressColor:
                                    const Color.fromRGBO(248, 194, 79, 1.0),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Text(
                            'Mon',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tue',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Wed',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Thu',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Fri',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Sat',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Sun',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 12, left: 10),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '6.12',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Hours',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StepsPage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        ListTile(
                          leading: Icon(
                            IconData(0xe8d8, fontFamily: 'MaterialIcons'),
                            color: Colors.blue,
                          ),
                          title: Text(
                            'Steps',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          minLeadingWidth: 2,
                        ),
                        LineChartSampleSteps(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WeightPage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(
                            IconData(0xf07ec, fontFamily: 'MaterialIcons'),
                            color: Colors.red,
                          ),
                          title: Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          minLeadingWidth: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: Text(
                                '75.5',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: Text(
                                'Kg',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 15),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Current Weight',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
