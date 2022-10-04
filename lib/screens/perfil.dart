import 'package:camellapp/screens/nuevaPublicacion.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CamellApp"),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Juan Sebastian Gomez',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "../../assets/LOGO.png",
                      ),
                      radius: 100.0,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'SebastianG34@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '31757163623',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Cargo:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Column(
                          children: const <Widget>[
                            Text(
                              'Ingeniero Civil ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Municipio:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Text(
                          ' Popayan - Cauca',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final route = MaterialPageRoute(
                                builder: (context) => nuevaPublicacion());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            'Crear Publicacion',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final route = MaterialPageRoute(
                                builder: (context) => Profile());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            'Editar Perfil',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final route = MaterialPageRoute(
                                builder: (context) => Profile());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            'Mis Empleos',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("../../assets/obra1.jpg"),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("../../assets/obra2.jpg")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
