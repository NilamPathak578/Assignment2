import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double height = 15;
  final double width = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          child: Container(
            height: 550,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          buildContainer(
                              167.5, 162.5, Icons.gamepad, Colors.green),
                          buildSizedBox(),
                          buildContainer(
                              167.5, 162.5, Icons.send, Colors.orange.shade800),
                        ],
                      ),
                      buildSizedBox(),
                      Container(
                        height: 350,
                        width: 162.5,
                        child: Column(
                          children: [
                            buildContainer(100, 162.5, Icons.wifi, Colors.blue),
                            buildSizedBox(),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    buildContainer(130, 73.75, Icons.live_tv,
                                        Colors.yellow.shade800),
                                    buildSizedBox(),
                                    buildContainer(90, 73.5, Icons.bluetooth,
                                        Colors.red.shade600),
                                  ],
                                ),
                                buildSizedBox(),
                                Column(
                                  children: [
                                    buildContainer(90, 73.5, Icons.dashboard,
                                        Colors.red.shade600),
                                    buildSizedBox(),
                                    buildContainer(130, 73.75, Icons.accessible,
                                        Colors.yellow.shade800),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                buildSizedBox(),
                Row(
                  children: [
                    buildContainer(80, 245, Icons.battery_alert, Colors.pink),
                    buildSizedBox(),
                    buildContainer(80, 80, Icons.desktop_windows,
                        Colors.deepPurple.shade400),
                  ],
                ),
                buildSizedBox(),
                buildContainer(
                    80, double.infinity, Icons.radio, Colors.blue.shade300)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
      double height, double width, IconData icon, Color color) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  Widget buildSizedBox() {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
