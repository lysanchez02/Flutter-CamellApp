import 'package:camellapp/screens/detalleoferta.dart';
import 'package:camellapp/screens/perfil.dart';
import 'package:camellapp/screens/registrarse.dart';
import 'package:flutter/material.dart';

class IniciarSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INICIAR SESION"),
      ),
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Text("Image"),
            // Image.asset('../../image/LOGO.png'),
            // Text('Image from network'),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 64.0,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "../../assets/LOGO.png",
                ),
                radius: 100.0,
              ),
            ),
            TextField(
              decoration: inputDecoration.copyWith(
                hintText: 'Ingresa tu correo',
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              obscureText: true,
              decoration: inputDecoration.copyWith(
                hintText: 'Ingresa tu contraseña',
              ),
            ),
            const SizedBox(
              height: 64.0,
            ),
            ElevatedButton(
              onPressed: () {
                final route =
                    MaterialPageRoute(builder: (context) => Profile());
                Navigator.push(context, route);
              },
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Text(
              "Ó",
              style: TextStyle(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                final route =
                    MaterialPageRoute(builder: (context) => Registro());
                Navigator.push(context, route);
              },
              child: Text(
                'Registrate',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 64.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 13, 13),
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

const InputDecoration inputDecoration = InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  ),
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  hintStyle: TextStyle(
    color: Colors.black,
  ),
  fillColor: Colors.grey,
);
