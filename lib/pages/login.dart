import 'package:flutter/material.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              width: 200,
              child: Image.asset('assets/image/splash.png'),
            ),
            Container(
              height: 48,
              width: 300,
              margin: const EdgeInsets.only(top: 50),
              child: OutlinedButton.icon(
                icon: const Icon(Icons.g_mobiledata, size: 50),
                label: const Center(
                  child: Text(
                    'Continuar con Google',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color.fromRGBO(49, 105, 245, 1.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                ),
              ),
            ),
            Container(
              height: 48,
              width: 300,
              margin: const EdgeInsets.only(top: 25),
              child: OutlinedButton.icon(
                icon: const Icon(Icons.facebook, size: 35),
                label: const Center(
                  child: Text(
                    'Continuar con Facebook',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color.fromRGBO(50, 79, 165, 1.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                ),
              ),
            ),
            Container(
              height: 48,
              width: 300,
              margin: const EdgeInsets.only(top: 25),
              child: OutlinedButton.icon(
                icon: const Icon(Icons.mail, size: 30),
                label: const Center(
                  child: Text(
                    'Registrarse con e-mail',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Register');
                },
                style: OutlinedButton.styleFrom(
                  primary: const Color.fromRGBO(100, 104, 111, 1.0),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  side: const BorderSide(
                      color: Color(0xFF64686f),
                      width: 3,
                      style: BorderStyle.solid),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 300,
              margin: const EdgeInsets.only(top: 50),
              child: OutlinedButton(
                child: const Text('Entrar como invitado',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    primary: const Color.fromRGBO(252, 20, 96, 1.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    side: const BorderSide(color: Colors.transparent)),
              ),
            ),
            Container(
              height: 30,
              width: 300,
              margin: const EdgeInsets.only(top: 0),
              child: OutlinedButton(
                child: const Text('Entrar como vendedor',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    primary: const Color.fromRGBO(106, 167, 87, 1.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    side: const BorderSide(color: Colors.transparent)),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'InicioSesion');
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: ColorsSelect.paginatorNext, fontSize: 15),
                    ),
                  )
                ],
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(top: 30, bottom: 20),
            //       child: const Text(
            //         '¿Ya tienes una cuenta?',
            //         style: TextStyle(
            //             fontSize: 15,
            //             color: Color.fromRGBO(100, 104, 111, 1.0)),
            //       ),
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(top: 30, bottom: 20),
            //       child: OutlinedButton(
            //         child: const Text('Iniciar sesion',
            //             style: TextStyle(
            //                 fontSize: 15, fontWeight: FontWeight.bold)),
            //         onPressed: () {},
            //         style: OutlinedButton.styleFrom(
            //             primary: const Color.fromRGBO(252, 20, 96, 1.0),
            //             shape: const RoundedRectangleBorder(
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(40))),
            //             side: const BorderSide(color: Colors.transparent)),
            //       ),
            //     ),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}
