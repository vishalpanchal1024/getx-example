import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.9),
      appBar: AppBar(
        title: Text('GetX State Management'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
              ),
              Obx(
                () => Text(controller.counter.toString(),
                    style: const TextStyle(fontSize: 28)),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          Center(
            child: Text(
              'Massege'.tr,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'name'.tr,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                  Get.changeTheme(ThemeData.light());
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('hin', 'IND'));
                  Get.changeTheme(ThemeData.dark());
                },
                child: const Text('Hindi'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
