import 'package:flutter/material.dart';
import 'package:helloworld/widgets/button_exo2.dart';
import 'package:helloworld/widgets/form_exo3.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ConnexionForm(),
    ));
  }
}
