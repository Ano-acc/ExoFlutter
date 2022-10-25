import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_exo4_controller.dart';

class GetxExo4View extends GetView<GetxExo4Controller> {
  const GetxExo4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
            controller.incrementCounter();
            controller.addWordToList();
          },
        ),
        body: Center(
            child: Column(
          children: [
            Obx(
              () => Text(
                "Nombre de fois que j'ai cliqué: ${controller.count.value}",
                style: const TextStyle(fontSize: 35),
              ),
            ),
            Obx(() => Row(
                    children: List.generate(
                  controller.wordlist.length,
                  (index) {
                    return Text("${controller.wordlist[index]}");
                  },
                )))
          ],
        )));
  }
}
