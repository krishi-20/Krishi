import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Upload',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductUploadScreen(),
    );
  }
}

class ProductUploadScreen extends StatefulWidget {
  @override
  _ProductUploadScreenState createState() => _ProductUploadScreenState();
}

class _ProductUploadScreenState extends State<ProductUploadScreen> {
  late File _image;
  String _productName = '';
  String _availableColors = '';
  String _description = '';

  Future getImage() async {
    // Code to pick an image from device
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Product'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                getImage();
              },
              child: _image == null
                  ? Container(
                height: 200,
                color: Colors.grey,
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                  size: 50.0,
                ),
              )
                  : Image.file(
                _image,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
              onChanged: (value) {
                setState(() {
                  _productName = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Available Colors',
              ),
              onChanged: (value) {
                setState(() {
                  _availableColors = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
              ),
              onChanged: (value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Code to upload product details
              },
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}