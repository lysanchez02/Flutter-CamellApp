import 'package:camellapp/models/menu_option.dart';
import 'package:camellapp/routers/app_routes.dart';
import 'package:camellapp/screens/categoria.dart';
import 'package:camellapp/screens/inicioSesion.dart';
import 'package:camellapp/screens/mispostulaciones.dart';
import 'package:camellapp/screens/nuevaPublicacion.dart';
import 'package:camellapp/screens/ofertasdeempleo.dart';
import 'package:camellapp/screens/detalleoferta.dart';
import 'package:camellapp/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class PantallaDeInicio extends StatelessWidget {
  const PantallaDeInicio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 119, 179, 196),
        appBar: AppBar(
          title: const Text('CamellApp'),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: Column(
                children: [
                  const Text(
                    "BIENVENIDO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("../../assets/LOGO.png"),
                      radius: 140.0,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "!DESCUBRE LA MEJOR APLICACION PARA OBTENER TRABAJO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Pedro Perez'),
                accountEmail: Text('Pedroperez55@email.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("../../assets/LOGO.png"),
                      radius: 140.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Inicio'),
                leading: const Icon(Icons.home),
                onTap: () {
                  MaterialPageRoute(
                      builder: (context) => const PantallaDeInicio());
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Mi Perfil'),
                leading: const Icon(Icons.person),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const Profile());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Mis Postulaciones'),
                leading: const Icon(Icons.list_sharp),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => mispostulaciones());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Ver Postulantes'),
                leading: const Icon(Icons.engineering_outlined),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const CategoriaProfesion());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Ver Ofertas de Empleo'),
                leading: const Icon(Icons.home),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const OfertasDeEmpleo());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Publica Un Empleo'),
                leading: const Icon(Icons.add),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const nuevaPublicacion());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Buscar'),
                leading: const Icon(Icons.search),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Salir'),
                leading: const Icon(Icons.exit_to_app),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => IniciarSesion());
                  Navigator.push(context, route);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
