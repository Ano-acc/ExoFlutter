import 'package:flutter/material.dart';
import 'package:dart_lol/dart_lol.dart';
import 'package:http/http.dart' as http;

class BtnExo2 extends StatefulWidget {
  const BtnExo2({super.key});

  @override
  State<BtnExo2> createState() => _BtnExo2State();
}

class _BtnExo2State extends State<BtnExo2> {
  late bool isRed;
  late String txtValue;
  var url =
      'https://EUW1.api.riotgames.com/lol/summoner/v4/summoners/by-name/SeSsMoI69?api_key=RGAPI-ee86fa66-16a4-4031-9682-f989b3936567';
  @override
  void initState() {
    // final league = League(
    //     apiToken: "RGAPI-842c2283-0a8d-41e8-bc86-ab751ee06eb3", server: "EUW1");
    // var player = await league.getSummonerInfo(summonerName: 'SeSsMoI69');
    isRed = true;
    txtValue = "Refuser";
    super.initState();
  }

  void changeColor() {
    setState(() {
      if (txtValue == "Refuser") {
        txtValue = "Valider";
      } else {
        txtValue = "Refuser";
      }
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          changeColor();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0)),
          ),
          width: 500,
          height: 500,
          color: isRed ? Colors.red : Colors.green,
          child: Column(children: [
            Icon(
              isRed
                  ? Icons.highlight_off_outlined
                  : Icons.check_circle_outline_outlined,
            ),
            Text(txtValue),
          ]),
        ));
  }
}
