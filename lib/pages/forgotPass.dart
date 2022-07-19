import 'package:flutter/material.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'Recuperar contraseña',
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
            padding: const EdgeInsets.only(left: 0),
            height: 60,
            width: 90,
            child: Image.asset('assets/image/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: Container(
        // width: size.width,
        // height: size.height,
        // padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                //padding: const EdgeInsets.only(right: 8.5),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16, color: ColorsSelect.txtBoSubHe),
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
                margin: const EdgeInsets.only(right: 20, left: 20, top: 5),
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
                  onChanged: (text) {},
                ),
              ),
              Container(
                // padding: const EdgeInsets.only(left: 20, top: 15),
                margin: const EdgeInsets.only(right: 30, left: 32, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña',
                  style:
                      TextStyle(fontSize: 14, color: ColorsSelect.txtBoSubHe),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 380),
                child: SizedBox(
                  width: size.width - 40,
                  height: 60,
                  child: ElevatedButton(
                      child: const Text(
                        'Enviar Solicitud',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splashColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
