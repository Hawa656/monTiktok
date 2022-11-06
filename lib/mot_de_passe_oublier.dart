import 'package:flutter/material.dart';

class MotDePasseOublier extends StatefulWidget {
  const MotDePasseOublier({super.key});

  @override
  State<MotDePasseOublier> createState() => _MotDePasseOublierState();
}

class _MotDePasseOublierState extends State<MotDePasseOublier> {
  final _emailController = TextEditingController();

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   super.dispose();
  // }

  // Future passwordReset() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .sendPasswordResetEmail(email: _emailController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //pour changer la couleur de la fleche dans AppBar
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // mainAxisAlignment: MainAxisAlignment.start,
              //************Insertion de l'image  */
              Image.asset('assets/images/images.jpg'),
              SizedBox(
                height: 40,
              ),
              const Text(
                  'Entrez votre numéro de téléphone et nous \n vous enverrons un lien de réinitialisation de\n mot de passe.'),
              const SizedBox(
                height: 20,
              ),

              //*******************test***************** */
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffF93232),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Confirmer',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),

//************************************cette partie en fzigt partie vraio */
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20.0),
              //     child: TextField(
              //         controller: _emailController,
              //         decoration: InputDecoration(
              //           // enabledBorder: OutlineInputBorder(
              //           //   borderRadius: BorderRadius.circular(12),
              //           // ),
              //           border: InputBorder.none,
              //           focusedBorder: const OutlineInputBorder(
              //               // borderRadius: BorderRadius.circular(12),
              //               borderSide: BorderSide(color: Colors.white)),
              //           hintText: 'Email',
              //           fillColor: Colors.grey[200],
              //           filled: true,
              //         ),
              //         ),
              //************************************cette partie en fzigt partie vraio */
              // child:Center(
              //   child: Text('Confirmer'),
              //   style: TextStyle(color: Colors.white)
              // )
              //************************************cette partie en fzigt partie vraio */
              //   ),

              // ),

              // MaterialButton(
              //   onPressed: () {},
              //   padding: EdgeInsets.all(20),
              //   child: Container(
              //     margin: const EdgeInsets.all(50),
              //     child: ElevatedButton(
              //         onPressed: () {},
              //         child: const Text(
              //           'Confirmer',
              //           style: TextStyle(
              //             fontSize: 20,
              //           ),
              //         ),
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor: Colors.black)),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
