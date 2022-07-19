import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/servicio/serviceLogin.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;
  bool _check = false;
  String? nombre = "";
  String? correo = "";
  String? password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'Registrate',
          style: TextStyle(fontSize: 15),
        ),
        leading: SizedBox(
          child: IconButton(
            splashRadius: 15,
            icon: const Icon(
              Icons.arrow_back,
              color: ColorsSelect.paginatorNext,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 60,
            width: 170,
            child: Image.asset('assets/image/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: Center(
        child: SingleChildScrollView(
          // width: size.width,
          // height: size.height,
          // padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, right: 4),
                //padding: const EdgeInsets.only(right: 8),
                child: const Text(
                  'Crea una cuenta para empezar a usar la app',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16.5, color: ColorsSelect.btnTextBo1),
                ),
              ),
              Container(
                //padding: const EdgeInsets.only(right: 5),
                margin: const EdgeInsets.only(right: 290, top: 30),
                child: const Text(
                  'Nombre',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 21, left: 21, top: 5),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  //autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Nombre completo',
                  ),
                  onChanged: (text) {
                    nombre = text;
                  },
                ),
              ),
              Container(
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 210, top: 30),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 21, left: 21, top: 5),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  //autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Dirección de correo',
                  ),
                  onChanged: (text) {
                    correo = text;
                  },
                ),
              ),
              Container(
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 270, top: 30),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 21, left: 21, top: 6),
                child: TextField(
                  obscureText: _isObscure,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  //autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Contraseña',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
              Container(
                // padding: const EdgeInsets.only(left: 20, top: 15),
                margin: const EdgeInsets.only(right: 25, left: 32, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'La contraseña tiene que tener caracteres, números y símbolos con un mínimo de 6 caracteres',
                  style:
                      TextStyle(fontSize: 13, color: ColorsSelect.txtBoSubHe),
                ),
              ),
              Container(
                //padding: const EdgeInsets.only(top: 18),
                margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _check,
                      onChanged: (check) {
                        setState(() {
                          _check = check!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(
                      child: RichText(
                          text: TextSpan(children: <TextSpan>[
                        const TextSpan(
                            text: 'Al registrarse, acepto los ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: 'términos y\n',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('términos y'),
                            style: const TextStyle(
                              color: ColorsSelect.paginatorNext,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: 'condiciones',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('condiciones'),
                            style: const TextStyle(
                              color: ColorsSelect.paginatorNext,
                              fontSize: 18,
                            )),
                        const TextSpan(
                            text: ' y la ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: 'política de privacidad',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('política de privacidad'),
                            style: const TextStyle(
                              color: ColorsSelect.paginatorNext,
                              fontSize: 18,
                            )),
                      ])),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: size.width - 40,
                  height: 60,
                  child: ElevatedButton(
                      child: const Text(
                        'Crear Cuenta',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        print(nombre);
                        if (nombre == "" || correo == "" || password == "") {
                          print("Campos Vacioss");
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text("Campos Vacios, rellene los campos."),
                              duration: Duration(milliseconds: 3000),
                            ),
                          );
                        } else {
                          register(nombre!, correo!, password!).then((value) =>
                              {
                                if (value == "Usuario creado")
                                  {
                                    Navigator.pushReplacementNamed(
                                        context, 'InicioSesion')
                                  }
                                else
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text("Error al crear el usuario"),
                                        duration: Duration(milliseconds: 3000),
                                      ),
                                    )
                                  }
                              });
                          // print(name);
                          // print(email);
                          // print(password);
                          print("Registro");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splashColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'InicioSesion');
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: ColorsSelect.paginatorNext, fontSize: 17),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}







// class _RegisterState extends State<Register> {
//   bool _isObscure = true;
//   bool _check = false;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         // automaticallyImplyLeading: false,
//         title: const Text(
//           'Registrate',
//           style: TextStyle(fontSize: 15),
//         ),
//         leading: SizedBox(
//           child: IconButton(
//             splashRadius: 15,
//             icon: const Icon(
//               Icons.arrow_back,
//               color: ColorsSelect.paginatorNext,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         actions: [
//           Container(
//             padding: const EdgeInsets.only(left: 90),
//             height: 60,
//             width: 170,
//             child: Image.asset('assets/image/splash.png'),
//           )
//         ],
//         backgroundColor: ColorsSelect.txtBoHe,
//       ),
//       body: Container(
//         width: size.width,
//         height: size.height,
//         padding: const EdgeInsets.only(right: 10, left: 10),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(bottom: 60, top: 50),
//                 padding: const EdgeInsets.only(right: 8),
//                 child: const Text(
//                   'Crea una cuenta para empezar a usar la app',
//                   textAlign: TextAlign.center,
//                   style:
//                       TextStyle(fontSize: 16, color: ColorsSelect.btnTextBo1),
//                 ),
//               ),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                 margin: const EdgeInsets.only(right: 270),
//                 child: const Text(
//                   'Nombre',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(right: 20, left: 20),
//                 child: TextField(
//                   textAlign: TextAlign.left,
//                   style: const TextStyle(fontSize: 18),
//                   autofocus: true,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         borderSide: BorderSide(color: Colors.black, width: 1)),
//                     hintText: 'Nombre completo',
//                   ),
//                   onChanged: (text) {},
//                 ),
//               ),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                 margin: const EdgeInsets.only(right: 210, top: 20),
//                 child: const Text(
//                   'Correo electronico',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(right: 20, left: 20),
//                 child: TextField(
//                   textAlign: TextAlign.left,
//                   style: const TextStyle(fontSize: 18),
//                   autofocus: true,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         borderSide: BorderSide(color: Colors.black, width: 1)),
//                     hintText: 'Nombre completo',
//                   ),
//                   onChanged: (text) {},
//                 ),
//               ),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                 margin: const EdgeInsets.only(right: 250, top: 20),
//                 child: const Text(
//                   'Contraseña',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(right: 20, left: 20),
//                 child: TextField(
//                   obscureText: _isObscure,
//                   textAlign: TextAlign.left,
//                   style: const TextStyle(fontSize: 18),
//                   autofocus: true,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                           _isObscure ? Icons.visibility : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _isObscure = !_isObscure;
//                         });
//                       },
//                     ),
//                     border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         borderSide: BorderSide(color: Colors.black, width: 1)),
//                     hintText: 'Password',
//                   ),
//                   onChanged: (text) {},
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20, top: 15),
//                 margin: const EdgeInsets.only(right: 10),
//                 alignment: Alignment.centerLeft,
//                 child: const Text(
//                   'La contraseña tiene que tener caracteres númericos y simbolos con un mínimo de 6 caracteres',
//                   style:
//                       TextStyle(fontSize: 14, color: ColorsSelect.txtBoSubHe),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 18),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Checkbox(
//                       value: _check,
//                       onChanged: (check) {
//                         setState(() {
//                           _check = check!;
//                         });
//                       },
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50)),
//                     ),
//                     Container(
//                       height: 40,
//                       child: const Text(
//                         'Al registrarme, acepto los terminos y\n  condiciones yla politica de privacidad.',
//                         style: TextStyle(fontSize: 15),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 90),
//                 child: SizedBox(
//                   width: size.width - 70,
//                   height: 50,
//                   child: ElevatedButton(
//                       child: const Text(
//                         'Crear Cuenta',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           primary: ColorsSelect.splashColor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)))),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     '¿Ya tienes una cuenta?',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, 'InicioSesion');
//                     },
//                     child: const Text(
//                       'Iniciar sesión',
//                       style: TextStyle(
//                           color: ColorsSelect.paginatorNext, fontSize: 15),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

