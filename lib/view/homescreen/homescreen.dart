import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shedule/controller/homescreencontroller.dart';
import 'package:shedule/view/homescreen/secondscreen/secondscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Homescreencontroller controller = Get.put(Homescreencontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          "Schedule working time",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      backgroundColor: Colors.cyan.shade100,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Day",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "Shift",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.cyan.withOpacity(.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          "Sunday",
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(onPressed: () {}, child: Text("Morning")),
                        TextButton(onPressed: () {}, child: Text("Afternoon")),
                        TextButton(onPressed: () {}, child: Text("Night"))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(secondscreen());
                  },
                  child: Text("Schedule"))
            ],
          )
        ],
      ),
    );
  }
}
