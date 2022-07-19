import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home/components/buttonCanvas.dart';
import 'package:mvp_all/pages/home/components/carrusel.dart';
import 'package:mvp_all/pages/home/components/carrusel_Imagenes.dart';
import 'package:mvp_all/pages/home/components/filtro.dart';
import 'package:mvp_all/pages/home/components/windows_modal.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

import 'package:carousel_slider/carousel_slider.dart';
//import 'package:mvp/src/widgets/buttonCanvas.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int page = 0;
  String? drop1 = "Calle 10 9";
  String? dropd2 = "Entrega a domicilio";

  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cambioImagen();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(right: 0),
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsSelect.paginatorNext,
          ),
        ),
        title: const Text(
          "Tienda",
        ),
        iconTheme: const IconThemeData(color: ColorsSelect.btnBackgroundBo1),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(left: 60, right: 0),
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 15, right: 0),
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add,
            ),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: const Text(
                                  'Hola',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 5),
                                child: const Text(
                                  'Getza',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 94, 184, 97)),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  ',',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(bottom: 15, top: 30),
                                margin: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/image/B1.png'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Entregar ahora',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorsSelect.txtBoSubHe,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120,
                                      // marin: const EdgeInsets.only(
                                      //     left: 25, right: 10),
                                      child: DropdownButton<String>(
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        value: drop1,
                                        isExpanded: true,
                                        items: [
                                          'Calle 10 9',
                                          'Calle 10 8',
                                          'Calle 10 11'
                                        ]
                                            .map<DropdownMenuItem<String>>(
                                                (value) => DropdownMenuItem(
                                                      child: Text(
                                                        value,
                                                        style: const TextStyle(
                                                            fontSize: 15),
                                                      ),
                                                      value: value,
                                                    ))
                                            .toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            drop1 = newValue;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2,
                      height: 150,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 70),
                            child: const Image(
                              image: AssetImage('assets/image/B5.png'),
                              width: 90,
                              height: 85,
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.only(top: 20),
                            margin: const EdgeInsets.only(left: 25, right: 10),
                            child: DropdownButton<String>(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              value: dropd2,
                              isExpanded: true,
                              items: [
                                'Entrega a domicilio',
                                'domicilio1',
                                'domicilio2'
                              ]
                                  .map<DropdownMenuItem<String>>((value) =>
                                      DropdownMenuItem(
                                        child: Text(
                                          value,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                        value: value,
                                      ))
                                  .toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  dropd2 = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: ColorsSelect.txtBoSubHe,
              ),
              SizedBox(
                height: 600,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                      child: const Text(
                        'Mis mascotas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 75,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/image/dog.jpg'),
                                        fit: BoxFit.fill)),
                                margin:
                                    const EdgeInsets.only(left: 15, right: 10),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 62),
                                child: const Text(
                                  'Mi perro',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                padding: const EdgeInsets.only(bottom: 50),
                                onPressed: () {},
                                icon: const Icon(Icons.add_circle,
                                    size: 60, color: ColorsSelect.btnTextBo1),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    bottom: 12.5, left: 15),
                                width: 65,
                                child: const Text(
                                  'Agregar Mascota',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: ColorsSelect.btnTextBo1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 10, bottom: 7),
                    //   width: size.width,
                    //   height: 60,
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     child: Row(
                    //       children: listWidgets,
                    //     ),
                    //   ),

                    // ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child: Column(
                              children: [
                                const Image(
                                  width: 170,
                                  height: 180,
                                  image: AssetImage('assets/image/B5.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: const Text(
                                    'PRODUCTOS',
                                    style: TextStyle(
                                        color: ColorsSelect.btnBackgroundBo2,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                const Image(
                                  width: 170,
                                  height: 180,
                                  image: AssetImage('assets/image/B1.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: const Text(
                                    'SERVICIOS',
                                    style: TextStyle(
                                        color: ColorsSelect.btnBackgroundBo2,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 35,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              onChanged: (text) {},
                              decoration: const InputDecoration(
                                focusColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
                                ),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintText: 'Buscar productos o servicios...',
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)),
                            child: IconButton(
                              iconSize: 25,
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.tune),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: SizedBox(
                        width: size.width - 30,
                        height: 170,
                        child: FutureBuilder(
                            future: carruselImagenes(),
                            builder: (BuildContext context,
                                AsyncSnapshot<List<String>> snapshot) {
                              if (snapshot.data != null) {
                                return CarouselSlider(
                                  items: snapshot.data!.map((e) {
                                    return Center(
                                      child: Image(
                                        image: NetworkImage(e),
                                      ),
                                    );
                                  }).toList(),
                                  options: CarouselOptions(
                                      autoPlay: true, viewportFraction: 1),
                                );
                              }
                              return Container();
                            }),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 3,
                color: ColorsSelect.txtBoSubHe,
              ),
              SizedBox(
                height: 380,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          child: const Text(
                            'Productos cerca',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 200,
                          height: 50,
                          child: FutureBuilder(
                            builder: (context, AsyncSnapshot<List> snapshot) {
                              if (snapshot.data != null) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: snapshot.data!
                                          .map((e) => Container(
                                                height: 32,
                                                margin: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary:
                                                              Colors.grey[300]),
                                                  child: Text(
                                                    e,
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[600]),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ))
                                          .toList()),
                                );
                              }
                              return Container();
                            },
                            future: filterPets(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: FutureBuilder(
                          future: carruselImagen(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Map<dynamic, dynamic>>>
                                  snapshot) {
                            if (snapshot.data != null) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: snapshot.data!
                                      .map((e) => _createCards(
                                          e['urlImage'],
                                          e['description'],
                                          e['price'],
                                          e['name']))
                                      .toList(),
                                ),
                              );
                            }
                            return Container();
                          }),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 380,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 20),
                          child: const Text(
                            'Servicios Cerca',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 200,
                          height: 50,
                          child: FutureBuilder(
                            builder: (context, AsyncSnapshot<List> snapshot) {
                              if (snapshot.data != null) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: snapshot.data!
                                          .map((e) => Container(
                                                height: 32,
                                                margin: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary:
                                                              Colors.grey[300]),
                                                  child: Text(
                                                    e,
                                                    style: TextStyle(
                                                      color: Colors.grey[600],
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ))
                                          .toList()),
                                );
                              }
                              return Container();
                            },
                            future: filterPets(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: FutureBuilder(
                          future: carruselImagen(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Map<dynamic, dynamic>>>
                                  snapshot) {
                            if (snapshot.data != null) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: snapshot.data!
                                      .map((e) => _createCards2(
                                          e['urlImage'],
                                          e['description'],
                                          e['price'],
                                          e['name']))
                                      .toList(),
                                ),
                              );
                            }
                            return Container();
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Stack(
          children: [
            CustomPaint(
              size: const Size.fromHeight(80),
              painter: ButtonPainter(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      print("HOME");
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.assignment,
                        size: 35, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.pets, size: 35, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: ColorSelect.txtBoHe,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.arrow_back),
      //       label: 'Regresar',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Inicio',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.help),
      //       label: 'Ayuda',
      //     ),
      //   ],
      //   selectedItemColor: Colors.blueGrey,
      //   unselectedItemColor: ColorSelect.btnBackgroundBo1,
      //   currentIndex: 1,
      //   onTap: (index) {
      //     Navigator.pop(context);
      //   },
      //   // backgroundColor: ColorSelect.txtBoHe,
      // ),
    );
  }

  AnimatedContainer animatedMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: page == index
              ? ColorsSelect.paginatorNext
              : ColorsSelect.txtBoSubHe),
      height: 5,
      width: page == index ? 23 : 12,
      duration: kThemeAnimationDuration,
    );
  }

  void _cambioImagen() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (page == 4) {
        controller.jumpToPage(controller.initialPage);
      } else {
        controller.nextPage(
            duration: const Duration(seconds: 2), curve: Curves.easeIn);
      }
    });
  }

  Card _crearCards(String image) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          onTap: () async {
            await showDialog(
                context: context,
                builder: (_) => DialogContainer(image: image));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ));
  }

  Widget _createCards(
      String image, String description, double price, String name) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'product', arguments: {
          'url': image,
          'name': name,
          'description': description
        });
      },
      child: Container(
        alignment: Alignment.topLeft,
        width: 185,
        height: 280,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.green[300], fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: Text(
                  description,
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 20, left: 5),
                child: Text(
                  r'$' + price.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _createCards2(
      String image, String description, double price, String name) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'product', arguments: {
          'url': image,
          'name': name,
          'description': description
        });
      },
      child: Container(
        alignment: Alignment.topLeft,
        width: 185,
        height: 280,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  name,
                  style: const TextStyle(
                    color: ColorsSelect.txtBoHe,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: Text(
                  description,
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 20, left: 5),
                child: Text(
                  r'$' + price.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
