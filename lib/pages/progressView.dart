import 'package:flutter/material.dart';
import 'package:mvp_all/painters/progressPainter.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';
import 'dart:async';

class progressView extends StatefulWidget {
  progressView({Key? key}) : super(key: key);

  @override
  State<progressView> createState() => _progressViewState();
}

class _progressViewState extends State<progressView> {
  double progress = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateProgress();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.transparent,
        width: 100,
        height: 100,
        child: CustomPaint(
          painter: progressPainter(ban: progress),
        ),
      )),
    );
  }

  void updateProgress() {
    Timer.periodic(const Duration(milliseconds: 80), (timer) {
      setState(() {
        progress = progress + 10;
        if (progress == 100) {
          _cargarPagina();
        }
      });
    });
  }

  _cargarPagina() async {
    await Future.delayed(const Duration(milliseconds: 100), () {});
    Navigator.pushNamed(context, 'login');
  }
}
