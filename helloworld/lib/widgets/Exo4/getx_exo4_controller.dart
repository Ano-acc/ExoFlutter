import 'package:get/get.dart';

class GetxExo4Controller extends GetxController {
  GetxExo4Controller();
  Rx<int> count = 0.obs;
  RxList<String> wordlist = ["mot1", "mot2", "mot3"].obs;

  void incrementCounter() {
    count.value++;
  }

  void addWordToList() {
    wordlist.add("word");
  }
}
