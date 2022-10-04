import 'package:flutter/material.dart';
import 'package:camellapp/theme/app_theme.dart';

class CardType1 extends StatelessWidget {
  const CardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo,
              color: AppTheme.primary,
            ),
            title: Text("Pedro Perez"),
            subtitle: Text('Perfil de Usuario'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // children: [
              //   TextButton(
              //     onPressed: () {},
              //     child: const Text('Cancel'),
              //     // style: TextButton.styleFrom(primary: AppTheme.primary),
              //   ),
              //   TextButton(
              //     onPressed: () {},
              //     child: const Text('Ok'),
              //   ),
              // ],
            ),
          )
        ],
      ),
    );
  }
}
