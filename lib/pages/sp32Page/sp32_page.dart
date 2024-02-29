import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sp32Page/sp32_controller.dart';
import 'package:get/get.dart';


class Sp32Page extends StatefulWidget {
  const Sp32Page({super.key});

  @override
  State<Sp32Page> createState() => _Sp32PageState();
}

class _Sp32PageState extends State<Sp32Page> {
  final Sp32Controller sp3Con = Get.put(Sp32Controller());


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _ImageCover(),
          _Subtitulo('Inicio', top: 170.0, left: 40.0, fontSize: 32.0, fontWeight: FontWeight.bold),
          _Subtitulo('Visualización de los Sp32', top: 220.0, left: 40.0, fontSize: 20.0, fontWeight: FontWeight.w400),
          _BtnParaRegresar(),
          _BtnTextWithIcon(text: 'Sp32 wifi.ssd(a)', icon: Icons.arrow_forward_rounded, top: 350.0), // Puedes ajustar el top como necesites
          _AddRoomButton(),
        ],
      ),
    );
  }
}




class _ImageCover extends StatelessWidget {
  const _ImageCover();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset('assets/FondoSensores.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}



class _Subtitulo extends StatelessWidget {
  final String texto;
  final double top;
  final double left;
  final double fontSize;
  final FontWeight fontWeight;

  const _Subtitulo(this.texto, {required this.top, required this.left, required this.fontSize, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            texto,
            style: TextStyle(
              color: const Color(0xFF11245C),
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}


class _BtnParaRegresar extends StatelessWidget {
  const _BtnParaRegresar();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 45.0,
      //left: 20.0,
      right: 20.0,
      
      child: IconButton(
        icon: const Icon(Icons.arrow_circle_left_outlined,  color: Color(0xFF11245C), ),
        onPressed: () => Get.find<Sp32Controller>().goToInicioSesionPage(),
        iconSize: 40.0,
      ),
    );
  }
}



class _BtnTextWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final double top;

  const _BtnTextWithIcon({
    required this.text,
    required this.icon,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      width: 300,
      left: 35,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          shadowColor: Colors.blue, // Text and icon color
          textStyle: const TextStyle(fontSize: 16),
        ),
        onPressed: () => Get.find<Sp32Controller>().goToCuartoPage(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),
            const SizedBox(width: 100), //
            Icon(icon, color: Colors.blue),
             
            
          ],
        ),
      ),
    );
  }
}


class _AddRoomButton extends StatelessWidget {
  const _AddRoomButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 650.0,
      left: 35.0,
      right: 35.0,
      child: SizedBox(
        
        child: ElevatedButton(
          onPressed: () => Get.find<Sp32Controller>().goToAddSp32Page(),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF11245C), // Color de fondo
          ),
          child: const Text(
            'Ver',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
