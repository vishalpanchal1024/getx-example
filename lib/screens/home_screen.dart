import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              //  color: Colors.teal,
              child: ListTile(
                title: const Text('Dialog Box'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Hello EveryOne',
                    middleText: 'In this Video i\'m using Getx',
                    confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Ok',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
            Card(
              //color: Colors.teal,
              child: ListTile(
                title: const Text('Snack Bar'),
                onTap: () {
                  Get.snackbar(
                      'Hello Everyone', 'In this Video i\'m using Getx',
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.all(20),
                      icon: const Icon(Icons.check_circle));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Bottom Sheet'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text("Hello Everyone "),
                            ),
                            ListTile(
                              title: Text("Hello Everyone "),
                            ),
                            ListTile(
                              title: Text("Hello Everyone "),
                            ),
                            ListTile(
                              title: Text("Hello Everyone "),
                            ),
                            ListTile(
                              title: Text("Hello Everyone "),
                            ),
                          ],
                        )),
                    elevation: 5,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text('Massege'.tr),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      onPressed: () {
                        Get.changeTheme(ThemeData.light());
                      },
                      icon: const Icon(Icons.light_mode),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Card(
                  elevation: 5,
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      onPressed: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                      icon: const Icon(Icons.dark_mode),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
