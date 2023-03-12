import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 300,
              width: 300,
              foregroundDecoration: BoxDecoration(
                color: Colors.black.withOpacity(controller.opacity.toDouble()),
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdcEtZufMu-QxQpkd9RVeA1y88Gq7SG1t7tA&usqp=CAU'))),
            ),
          ),
          Obx(
            () => Slider(
                min: 0.2,
                max: 0.8,
                value: controller.opacity.toDouble(),
                onChanged: (value) {
                  controller.opacitySlider(value);
                }),
          ),
          const SizedBox(
            height: 35,
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
              const SizedBox(
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
          SizedBox(
            height: 25,
          ),
          Obx(
            () => Switch(
                value: controller.switchValue.value,
                onChanged: (value) {
                  Get.changeTheme(
                    (controller.switchValue.value)
                        ? ThemeData.light()
                        : ThemeData.dark(),
                  );
                  controller.switchvalue(value);
                }),
          )
        ],
      ),
    );
  }
}
