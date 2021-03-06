import 'package:flutter/material.dart';
import 'expenseCard.dart';
import 'scrollingOrder.dart';
import 'package:cool_ui/travelcard.dart';
import 'package:cool_ui/vehiclecard.dart';

class second extends StatefulWidget {
  static const id = "second";
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            scrollingDesign(),
            LiveTracking(),
            expenseBreakdown(),
            VehicleCard(),
            driverCard(),
          ],
        ),
      ),
    );
  }
}

class driverCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Driver Details",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("images/person.png"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FittedBox(
                                  child: Text(
                                    "KA 02M 2021",
                                    style: t(Colors.black, 20, FontWeight.bold),
                                  ),
                                ),
                              ),
                              height: 28,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "+91 - 1234567890",
                                  style: t(
                                    Colors.black,
                                    15,
                                    FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        "Call",
                        style: t(Colors.green.shade700, 17, FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 19,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

double getWidth(var context, double percent) {
  return (MediaQuery.of(context).size.width - 60) * percent;
}

TextStyle t(Color color, double fontSize, var fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
