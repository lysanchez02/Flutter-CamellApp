import 'package:camellapp/screens/inicioSesion.dart';
import 'package:flutter/material.dart';

class nuevaPublicacion extends StatelessWidget {
  const nuevaPublicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: TextField(
                    decoration: inputDecoration.copyWith(hintText: 'Titulo'),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextField(
                  decoration: inputDecoration.copyWith(hintText: 'Salario'),
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const Text(
            '5',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );

    final Color color = Theme.of(context).primaryColor;

    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(color, Icons.call, 'LLAMAR'),
        _buildButtonColumn(color, Icons.location_pin, 'DIRECCION'),
        _buildButtonColumn(color, Icons.group_add, 'POSTULARME'),
      ],
    );

    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          TextField(
            decoration:
                inputDecoration.copyWith(hintText: 'Agrega una descripción'),
            //  'Se necesita ayudante de Construccion',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Detalle de la Oferta',
          ),
        ),
        body: ListView(
          children: <Widget>[
            Text("Agrega una Foto"),
            Image.asset(
              '../../assets/agregarfoto.png',
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
