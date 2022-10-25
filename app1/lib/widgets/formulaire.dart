import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Formulaire extends StatefulWidget {
  const Formulaire({super.key});

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Icon(
                Icons.request_quote_outlined,
                color: Colors.red,
                size: 70,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Notes de frais',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail :',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.grey), //<-- SEE HERE
                    ),
                  ),
                  validator: (value) {
                    if (value != 'sarah@gmail.com') {
                      return "L'e-mail entré ne correspond à aucun compte";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 400,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Mot de passe :',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: Colors.grey), //<-- SEE HERE
                  ),
                ),
                validator: (value) {
                  if (value != '1234') {
                    return "Le mot de passe est incorrect";
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text('Rester connecté',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: GestureDetector(
                    onTap: () {
                      const snackBar = SnackBar(
                          content: Text('Le mot de passe est "1234"'),
                          backgroundColor: Colors.red);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Mot de passe oublié ?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Connexion en cours...'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Connexion',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
