
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/addsp32Page/add_sp32_controller.dart';
import 'package:get/get.dart';

class AddSp32Page extends StatefulWidget {
  const AddSp32Page({super.key});

  @override
  State<AddSp32Page> createState() => _AddSp32PageState();
}

class _AddSp32PageState extends State<AddSp32Page> {
  final AddSp32Controller addCon = Get.put(AddSp32Controller()); 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _ImageCover(),
          _Subtitulo('!Hola¡', top: 170.0, left: 40.0, fontSize: 32.0, fontWeight: FontWeight.bold),
          _Subtitulo('example@gmail.com', top: 220.0, left: 40.0, fontSize: 20.0, fontWeight: FontWeight.w400),
          _BtnParaRegresar(),
          _BoxFormulario(),
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
        onPressed: () => Get.find<AddSp32Controller>().goToInicioSesionPage(),
        iconSize: 40.0,
      ),
    );
  }
}

class _BoxFormulario extends StatelessWidget {
  final double top;
  const _BoxFormulario({this.top = 370.0}); // Valor predeterminado en caso de que no se proporcione

  @override
  Widget build(BuildContext context) {
    Color customColor = const Color(0xFFFFFFFF);

    return Positioned(
      top: top,
      left: 20.0,
      right: 20.0,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre del dispositivo',
                  prefixIcon: Icon(Icons.wifi_rounded, color: customColor),
                  labelStyle: TextStyle(color: customColor),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Descripción',
                  prefixIcon: Icon(Icons.assignment_outlined, color: customColor),
                  labelStyle: TextStyle(color: customColor),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              
              
              
            ],
          ),
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
            'Agregar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

