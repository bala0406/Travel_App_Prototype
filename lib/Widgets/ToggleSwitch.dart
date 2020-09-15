import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  final BuildContext context;

  const ToggleSwitch({this.context});

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  int index = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(widget.context).size.width,
            height: 24,
            color: Colors.red,
          ),
          Positioned(
            left: width,
            child: Container(
              width: MediaQuery.of(widget.context).size.width / 2 - 16,
              height: 24,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    if (index != 0) {
                      width = MediaQuery.of(widget.context).size.width - 16;
                      setState(() {});
                    }
                  },
                  child: Container(child: Text("bala"))),
              GestureDetector(
                  onTap: () {
                    if (index != 1) {}
                  },
                  child: Text("bhava"))
            ],
          )
        ],
      ),
    );
  }
}
