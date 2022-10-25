import 'package:flutter/material.dart';

class CardExo1 extends StatelessWidget {
  const CardExo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 100,
        child: Card(
          color: Colors.white,
          child: Column(children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "DUJARDIN Jean",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cinéma - Comédien',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Chip(
                      backgroundColor: Colors.yellow.shade200,
                      label: Text('Soumis'),
                      labelStyle: TextStyle(
                        color: Colors.yellow.shade800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ]),
        ));
  }
}
