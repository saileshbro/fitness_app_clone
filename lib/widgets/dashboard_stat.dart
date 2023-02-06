import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';

class DashboardStat extends StatelessWidget {
  const DashboardStat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        ClipPath(
          clipper: AppBarClipper(),
          child: Container(
            decoration: BoxDecoration(
              color: appBarUnderneath,
            ),
            height: MediaQuery.of(context).size.height * 0.40,
          ),
        ),
        Positioned(
          top: -65,
          left: MediaQuery.of(context).size.width * .55,
          bottom: 55,
          right: -95,
          child: Container(
            decoration: BoxDecoration(
              color: appBarOverlay,
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width * .35,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 28),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'My Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: null,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 90,
          left: 25,
          right: 25,
          bottom: 40,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 40, right: 40),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "TODAY'S GOAL",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      '1,200',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Text(
                                        'KCAL',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Calories',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      '90',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Text(
                                        'M',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Cardio',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0.25,
                    minWidth: double.infinity,
                    onPressed: () {},
                    color: Colors.grey[100],
                    child: Text(
                      'start challenge'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
