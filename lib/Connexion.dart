import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/mot_de_passe_oublier.dart';

void main() {
  runApp(Connexion());
}

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('profile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Créer un nouveau compte',
                style: TextStyle(color: Colors.black87),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                      onPressed: () => {_openPopup(context)},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Colors.red[400],
                      )),
                      //textColor: Colors.white,
                      child: Text(
                        'S\'inscrire',
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                      Icon(
                        Icons.help,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Connexion à TikTok',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Créer un profil, abonne-toi à d’autres comptes,\n crée tes propres vidéos et bien plus encore.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Utilise un téléphone ou une adresse  e-mail',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //************************premiere ligne********************************
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Continuer avec Facebook',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  //********************************** */
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Continuer avec Google',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  //************* */
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Continuer avec Twitter ',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
/********************** Le text en bas ******************* */
                  Expanded(
                    child: Container(
                      //color: Colors.orange,
                      height: 40,
                      //pour que lorsque l'on clic sur mot de passe oublier que ça t'emmene sur la page concerner
                      //fonction GestureDetector
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MotDePasseOublier();
                                  },
                                ));
                              },
                              // ),
                              child: Text(
                                "Mot de passe oulié?",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                    ),
                  ),

/*****************Pour mettre les deux liens TU AS DEJA UN COMPTE   ET CONEXION  ********* */
                  Expanded(
                    child: Align(
                      //color : Colors.black,
                      alignment: FractionalOffset.bottomCenter,
                      child: MaterialButton(
                        onPressed: () => {},
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    //color: Colors.orange,
                                    height: 40,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Tu n’as pas de compte ?",
                                              style: TextStyle(fontSize: 15)),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text("Inscription ",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
