import 'package:flutter/material.dart';

class Produto2Page extends StatelessWidget {

  const Produto2Page({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Prdotuto2'),),
           body: Center(child: Column(children: [Text('data')],)),
       );
  }
}