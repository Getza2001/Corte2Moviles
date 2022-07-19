import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';
import 'package:mvp_all/widgets/ContentBoarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController cambio = PageController();

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los serviciosn para consentir",
      "image": "assets/image/B1.png"
    },
    {
      "text": "ADOPCION",
      "text1": " Brindamos todos los serviciosn para consentir",
      "image": "assets/image/B2.png"
    },
    {
      "text": "HOSPITALIDAD",
      "text1": " Brindamos todos los serviciosn para consentir",
      "image": "assets/image/B3.png"
    },
    {
      "text": "VETERINARIA",
      "text1": " Brindamos todos los serviciosn para consentir",
      "image": "assets/image/B4.png"
    },
    {
      "text": "TIENDA",
      "text1": " Brindamos todos los serviciosn para consentir",
      "image": "assets/image/B5.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: cambio,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) => ContentBoarding(
                      text: onBoardingDatas[index]["text"]!,
                      text1: onBoardingDatas[index]["text1"]!,
                      image: onBoardingDatas[index]["image"]!,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(onBoardingDatas.length,
                              (index) => newMethod(index: index)),
                        ),
                        Container(
                          height: 48,
                          width: 300,
                          margin: const EdgeInsets.only(top: 25),
                          child: _button(indexAll: onBoardingDatas.length - 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlinedButton _button({required int indexAll}) {
    return OutlinedButton(
      child: Text(
        pages == onBoardingDatas.length - 1 ? 'Continuar' : 'Siguiente',
        style: const TextStyle(fontSize: 15),
      ),
      onPressed: () {
        // Navigator.pushNamed(context, 'circulo');
        pages == onBoardingDatas.length - 1
            ? Navigator.pushNamed(context, 'circulo')
            : cambio.nextPage(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn);
      },
      style: OutlinedButton.styleFrom(
        primary: pages == indexAll
            ? ColorsSelect.btnTextBo2
            : ColorsSelect.btnTextBo1,
        backgroundColor: pages == indexAll
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.btnBackgroundBo1,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        side: BorderSide(
            color: pages == indexAll
                ? Colors.transparent
                : ColorsSelect.btnTextBo1,
            width: 3,
            style: BorderStyle.solid),
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: pages == index
            ? ColorsSelect.paginatorNext
            : ColorsSelect.paginator,
      ),
      height: 4,
      width: pages == index ? 20 : 12,
    );
  }
}
