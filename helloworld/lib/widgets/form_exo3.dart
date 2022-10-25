import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConnexionForm extends StatefulWidget {
  const ConnexionForm({super.key});

  @override
  State<ConnexionForm> createState() => _ConnexionFormState();
}

late bool CheckboxValue;

class _ConnexionFormState extends State<ConnexionForm> {
  void initState() {
    CheckboxValue = false;
    super.initState();
  }

  void mdpOublie() {}

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(children: [
          const Icon(Icons.account_circle),
          const Text("Note de frais"),
          Row(
            children: [const Text("Email*"), Spacer()],
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez rentrer un e-mail";
              }
              return null;
            },
          ),
          Row(
            children: [const Text("Mot de passe*"), Spacer()],
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez rentrer un mot de passe";
              }
              return null;
            },
          ),
          Row(
            children: [
              Checkbox(
                value: CheckboxValue,
                onChanged: (bool? value) {
                  setState(() {
                    CheckboxValue = value!;
                  });
                },
              ),
              Text("Rester connecté"),
              Spacer(),
              InkWell(
                onTap: () {
                  mdpOublie();
                },
                child: Text("Mot de passe oublié ?"),
              )
            ],
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: Text('Connexion'),
          )
        ]),
      ),
    );
  }
}
