import 'package:get/get.dart';

class GetXController extends GetxController {
  GetXController();

  Rx<int> count = 0.obs;
  RxList<String> wordlist = ["mot1", "mot2", "mot3"].obs;

  void addWordToList() {
    wordlist.add("word4");
  }

  void incrementCounter() {
    count.value++;
  }
}
