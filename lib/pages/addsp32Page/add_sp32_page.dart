
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
          _Subtitulo('SP32', top: 170.0, left: 40.0, fontSize: 32.0, fontWeight: FontWeight.bold),
          _Subtitulo('Detectado', top: 220.0, left: 40.0, fontSize: 20.0, fontWeight: FontWeight.w400),
          _BtnParaRegresar(),
          _BtnTextWithIcon(text: 'Sp32 wifi.ssd(a)', icon: Icons.add, top: 350.0), // Puedes ajustar el top como necesites
          _TitleTable(),
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
        onPressed: () => Get.find<AddSp32Controller>().goToInicioSesionPage(),
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
        onPressed: () {},//=> Get.find<Sp32Controller>().goToCuartoPage(),
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



class _WhiteRectangle extends StatelessWidget {
  const _WhiteRectangle();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 400,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.78, // Ajusta el ancho del rectángulo según tus necesidades
          height: MediaQuery.of(context).size.height * 0.066, // Ajusta la altura del rectángulo según tus necesidades
          decoration: BoxDecoration(
            color: Color(0xff11245C), // Establece el color blanco del rectángulo
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
      top: 400,
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
                      ' wifi.ssd(oficina)',
                      style: TextStyle(
                        color: Color.fromARGB(255, 244, 244, 245), // CamAbia el color del texto a naranja
                        fontWeight: FontWeight.bold, // Opcional: puedes agregar estilos adicionales
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      '',
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
                      '',
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
                      '',
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
      top: 510.0,
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
            'Agregados',
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
            'Agregar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

