import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'SeConnecter.dart';

void main() {
  runApp(SeConnecter());
}

class SeConnecter extends StatelessWidget {
  // const SeConnecter({super.key});
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: 'Telephone',
    ),
    const Tab(
      text: 'Email',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          // ICI ON FAIT APPEL A UN BOUTON DE RETOUR

          leading: const BackButton(color: Colors.black),
          title: const Center(
            child: Text(
              'SeConnecter',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          bottom: TabBar(tabs: myTabs),
          backgroundColor: Colors.white,
        ),
        body: const TabBarView(children: [telephone(), Center()]),
      ),
    );
    IntlPhoneField(
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      initialCountryCode: '+223',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return IntlPhoneField(
//     decoration: InputDecoration(
//       labelText: 'Phone Number',
//       border: OutlineInputBorder(
//         borderSide: BorderSide(),
//       ),
//     ),
//     initialCountryCode: '+223',
//     onChanged: (phone) {
//       print(phone.completeNumber);
//     },
//   );
// }

// Mon container de formulaire pour le telephone

class telephone extends StatelessWidget {
  const telephone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          (Text(
            "En continuant, tu acceptes les Conditions d’utilisation et reconnais avoir lu notre Politique de Confidentialité.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          )),
        ],
      ),
    );
  }
}
