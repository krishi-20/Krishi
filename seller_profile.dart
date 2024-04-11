import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SellerPage(),
  ));
}
class SellerPage extends StatelessWidget {
  const SellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      tit
      le: 'SellerPage',
      home: Scaffold(),
    );
  }
}

class SellerPage1 extends StatefulWidget {
  const SellerPage1({super.key});

  @override
  State<SellerPage1> createState() => _SellerPage1State();
}

class _SellerPage1State extends State<SellerPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
        icon: const Icon(Icons.person),),
        title: const Text('ARTISTA'),
      ),

      body: Container(
        child: GridView(
          children: [
            Container(
              
            )
          ],
        ),
      ),
    );
  }
}

