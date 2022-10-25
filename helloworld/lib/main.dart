import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/widgets/Exo4/getx_exo4_bindings.dart';
import 'package:helloworld/widgets/Exo4/getx_exo4_view.dart';
import 'package:helloworld/widgets/academy_page.dart';
import 'package:helloworld/widgets/card_exo1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      getPages: [
        GetPage(
            name: "/exo4",
            page: () => const GetxExo4View(),
            binding: GetxExo4Bindings()),
        GetPage(name: "/exo1", page: () => const CardExo1())
      ],
      initialRoute: "/exo4",
    );
  }
}
