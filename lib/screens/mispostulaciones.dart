import 'package:flutter/material.dart';
import 'package:camellapp/main.dart';
import 'package:camellapp/screens/pantalla_inicio.dart';
import 'package:camellapp/screens/detalleoferta.dart';
import 'package:camellapp/theme/app_theme.dart';

class mispostulaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis Postulaciones"),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  elevation: 24,
                  shadowColor: Colors.yellow,
                  child: ListTile(
                    onTap: () {
                      final route = MaterialPageRoute(
                          builder: (context) => detalleOferta());
                      Navigator.push(context, route);
                    },
                    leading: Icon(Icons.engineering),
                    title: Text('Se necesita ayudante de Construccion'),
                    subtitle: Text('Sueldo: Salario Minimo'),
                  ),
                ),
                Card(
                    elevation: 24,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => detalleOferta());
                        Navigator.push(context, route);
                      },
                      leading: Icon(Icons.engineering),
                      title: Text('Se necesita Electricista'),
                      subtitle: Text('Sueldo: Salario Minimo'),
                    )),
                Card(
                    elevation: 24,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => detalleOferta());
                        Navigator.push(context, route);
                      },
                      leading: Icon(Icons.engineering),
                      title: Text('Se necesita maestro obra blanca'),
                      subtitle: Text('Sueldo: Salario Minimo'),
                    )),
                Card(
                    elevation: 24,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => detalleOferta());
                        Navigator.push(context, route);
                      },
                      leading: Icon(Icons.engineering),
                      title: Text('Se necesita ingeniero Civil'),
                      subtitle: Text('Sueldo: 3.000.000'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
