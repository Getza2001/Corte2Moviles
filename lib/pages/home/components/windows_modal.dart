import 'package:flutter/material.dart';

class DialogContainer extends StatelessWidget {
  DialogContainer({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 450,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 130,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                'Descripción',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              // 'Marte es un planeta desértico y frío. Es la mitad del tamaño de la Tierra, y también recibe el nombre de "planeta rojo". Es rojo por el hierro oxidado que tiene en el suelo.',
              'Nombre del archivo: ' + image,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
