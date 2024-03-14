import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          _BtnTextWithIcon(text: 'Sp32 wifi.ssd(a)', icon: Icons.arrow_forward_rounded, top: 340.0,  ), // Puedes ajustar el top como necesites
          _ExclamationButton(),
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
        icon: const Icon(Icons.account_circle,  color: Color(0xFF11245C), ),
        onPressed: () => _showLogoutDialog(context),
        iconSize: 40.0,
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cerrar Sesión'),
          content: const Text('¿Estás seguro de que quieres cerrar sesión?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el AlertDialog
              },
            ),
            TextButton(
              child: const Text('Cerrar Sesión'),
              onPressed: () {
                // Aquí iría la lógica para cerrar la sesión, por ejemplo:
                // Get.find<Sp32Controller>().goToPerfilPage();
                // Luego cerrar el diálogo
                Navigator.of(context).pop(); // Cierra el AlertDialog
              },
            ),
          ],
        );
      },
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
      height: 50,
      right: 35,
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
            const SizedBox(width: 95), //
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
            'Añadir dispositivo',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class _ExclamationButton extends StatelessWidget {
  const _ExclamationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 345.0,
      left: 190,
      height: 40,
      child: FloatingActionButton(
        onPressed: () => _showDescriptionDialog(context),
        child: const Icon(Icons.error_outline, color: Colors.white), // Icono en blanco
        backgroundColor: Color(0xFF4169E1), // Fondo azul #4169E1
      ),
    );
  }

  void _showDescriptionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Descripción'),
          content: const Text('Aquí es la descripción del dispositivo'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el Dialog
              },
            ),
          ],
        );
      },
    );
  }
}
