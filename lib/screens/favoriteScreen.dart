import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  HomeController controller = Get.put(HomeController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Screen'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple.shade900,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Get.to(FavoriteScreen());
        //     },
        //     icon: Icon(
        //       Icons.favorite,
        //       color: Colors.red,
        //       size: 28,
        //     ),
        //   ),
        // ],
      ),
      body: ListView.builder(
        itemCount: controller.favorite.value.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    controller.favorite.value[index].toString(),
                  )),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.only(left: 300.0, bottom: 150),
            //   child: IconButton(
            //     onPressed: () {
            //       if (controller.favorite.value
            //           .contains(controller.ImagesList[index].toString())) {
            //         controller
            //             .removeFromFav(controller.ImagesList[index].toString());
            //       } else {
            //         controller
            //             .addToFav(controller.ImagesList[index].toString());
            //       }
            //     },
            //     icon: Obx(
            //       () => Icon(
            //         Icons.favorite,
            //         color: (controller.favorite.value
            //                 .contains(controller.ImagesList[index].toString()))
            //             ? Colors.red
            //             : Colors.white,
            //         size: 40,
            //       ),
            //     ),
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
