import 'package:flutter/material.dart';
import 'package:mvp_all/servicio/serviceLogin.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({Key? key}) : super(key: key);

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  bool _isObscure = true;
  String? correo = "";
  String? password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'Iniciar sesión',
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
        // width: size.width,
        // height: size.height,
        // padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40, right: 10),
                //padding: const EdgeInsets.only(right: 8),
                child: const Text(
                  'Inicia sesión con tu cuenta para continuar',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 17, color: ColorsSelect.btnTextBo1),
                ),
              ),
              Container(
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 210, top: 60),
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
                    hintText: 'Email Address',
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
                margin: const EdgeInsets.only(right: 21, left: 21, top: 5),
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
                    hintText: 'Password',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text(
                    '¿Haz olvidado tu contraseña?',
                    style: TextStyle(
                        color: ColorsSelect.paginatorNext, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'ForgotPassword');
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 150),
                child: SizedBox(
                  width: size.width - 40,
                  height: 60,
                  child: ElevatedButton(
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        if (correo == "" || password == "") {
                          print('campo vacio');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text("Campos Vacios, rellene los campos."),
                              duration: Duration(milliseconds: 3000),
                            ),
                          );
                        } else {
                          print('campo lleno');
                          logueoServer(correo!, password!).then((value) {
                            print(value['status']);
                            if (value['status'] == 'success') {
                              print("entra vista nueva");
                              //print(value['token']);
                              Navigator.pushNamed(context, 'Home');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text("usuario o password incorrecto."),
                                  duration: Duration(milliseconds: 3000),
                                ),
                              );
                            }
                          });
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
                    '¿Todavía no tienes una cuenta?',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Register');
                    },
                    child: const Text(
                      'Regístrate',
                      style: TextStyle(
                          color: ColorsSelect.paginatorNext, fontSize: 16),
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
