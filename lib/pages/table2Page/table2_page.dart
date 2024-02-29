

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/table2Page/table2_controller.dart';
import 'package:get/get.dart';

class Table2Page extends StatefulWidget {
  const Table2Page({super.key});

  @override
  State<Table2Page> createState() => _Table2PageState();
}

class _Table2PageState extends State<Table2Page> {
final Table2Controller tab2Con = Get.put(Table2Controller());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _ImageCover(),
          _Subtitulo('Estas dentro de:', top: 170.0, left: 40.0, fontSize: 32.0, fontWeight: FontWeight.bold),
          _Subtitulo('Cuarto 2', top: 220.0, left: 40.0, fontSize: 20.0, fontWeight: FontWeight.w400),
          _TitleTable(),
          _BtnParaRegresar(),
          _WhiteRectangle(),
          _TableData(),
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
        onPressed: () => Get.find<Table2Controller>().goToCuartosPage(),
        iconSize: 40.0,
      ),
    );
  }
}

class _WhiteRectangle extends StatelessWidget {
  const _WhiteRectangle();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 20,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.78, // Ajusta el ancho del rectángulo según tus necesidades
          height: MediaQuery.of(context).size.height * 0.066, // Ajusta la altura del rectángulo según tus necesidades
          decoration: BoxDecoration(
            color: Colors.white, // Establece el color blanco del rectángulo
            borderRadius: BorderRadius.circular(0.0), // Opcional: ajusta el radio de la esquina si deseas esquinas redondeadas
            border: Border.all(color: Colors.grey), // Opcional: agrega un borde al rectángulo
          ),
        ),
      ),
    );
  }
}



class _TableData extends StatelessWidget {
  const _TableData();
  
  get f11245C => null;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 20,
      child: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: FractionColumnWidth(0.33),
            1: FractionColumnWidth(0.45),
            2: FractionColumnWidth(0.35),
            
          },
          border: TableBorder.all(),
          
          children: const [
            TableRow(
              children: [
                
                TableCell(
                  child: Center(
                    child: Text(
                      'Temperatura',
                      style: TextStyle(
                        color: Color(0xff11245C), // CamAbia el color del texto a naranja
                        fontWeight: FontWeight.bold, // Opcional: puedes agregar estilos adicionales
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      '-3°',
                      style: TextStyle(
                        color: Color(0xff11245C), // Cambia el color del texto a naranja
                        fontSize: 18.0,
                        
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Text(
                      'Humedad',
                      style: TextStyle(
                        color: Color(0xff11245C), // Cambia el color del texto a naranja
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold, // Opcional: puedes agregar estilos adicionales
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      '0°',
                      style: TextStyle(
                        color: Color(0xff11245C), // Cambia el color del texto a naranja
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleTable extends StatelessWidget {
  const _TitleTable();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 318.0,
      left: 40.0,
      right: 40.0,
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 252, 252, 252), // Color de fondo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0), // Ajusta el radio de la esquina a 0 para hacer cuadrado
            ),
          ),
          child: const Text(
            'Cuarto 2',
            style: TextStyle(
              color: Color.fromARGB(255, 17, 8, 8),
              fontSize: 18.0,
            ),
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
            'Añadir Aviso',
            style: TextStyle(color: Colors.white),
            
          ),
        ),
      ),
    );
  }
}