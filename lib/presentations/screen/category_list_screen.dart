import 'package:flutter/material.dart';

import '../widgets/categroyitem.dart';

class CategroyList extends StatelessWidget {
  const CategroyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategroyList'),
      ),
      body: GridView.builder(
        itemCount: 15,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: .72),
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(child: CategoryCardItem()),
          );
        },
      ),
    );
  }
}
