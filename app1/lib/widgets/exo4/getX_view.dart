import 'package:app1/widgets/exo4/getX_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetxView extends GetView<GetXController> {
  const GetxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
              "Nbr de mots ajoutés : ${controller.count.value}",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          Obx(
            () => Row(
              children: List.generate(
                controller.wordlist.length,
                (index) {
                  return Text("${controller.wordlist[index]},");
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
