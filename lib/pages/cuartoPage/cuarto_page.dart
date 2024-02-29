import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cuartoPage/cuarto_controller.dart';
import 'package:get/get.dart';

class CuartoPage extends StatefulWidget {
  const CuartoPage({super.key});

  @override
  State<CuartoPage> createState() => _CuartoPageState();
}

class _CuartoPageState extends State<CuartoPage> {
  final CuartoController cuaCon = Get.put(CuartoController());

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(
        children: [
          _ImageCover(),
          _Subtitulo('Estás dentro de:', top: 170.0, left: 40.0, fontSize: 32.0, fontWeight: FontWeight.bold),
          _Subtitulo('Sp32.wifi.ssd(a)', top: 220.0, left: 40.0, fontSize: 20.0, fontWeight: FontWeight.w400),
          _BtnParaRegresar(),
          _BtnTextWithIcon(text: 'Cuarto 1', icon: Icons.arrow_forward_rounded, top: 350.0), // Puedes ajustar el top como necesites
          _BtnTextWithIcon2(text: 'Cuarto 2', icon: Icons.arrow_forward_rounded, top: 400.0, ), // Puedes ajustar el top como necesites
          _AddRoomButton(),
        ]
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
        onPressed: () => Get.find<CuartoController>().goToSp32Page(),
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
        onPressed: () => Get.find<CuartoController>().goToTablePage(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),
            const SizedBox(width: 160), //
            Icon(icon, color: Colors.blue),
             
            
          ],
        ),
      ),
    );
  }
}

class _BtnTextWithIcon2 extends StatelessWidget {
  final String text;
  final IconData icon;
  final double top;

  const _BtnTextWithIcon2({
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
        onPressed: () => Get.find<CuartoController>().goToTable2Page(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),
            const SizedBox(width: 160), //
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF11245C), // Color de fondo
          ),
          child: const Text(
            'Añadir cuarto',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}




