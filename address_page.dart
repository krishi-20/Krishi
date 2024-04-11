import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AddressPage(),
  ));
}

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String _selectedAddressType = 'Home'; // Default address type

  // Controller for text fields
  TextEditingController _fieldNameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _houseNoController = TextEditingController();
  TextEditingController _localityController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _fieldNameController,
                decoration: InputDecoration(labelText: 'Field Name'),
              ),
              TextField(
                controller: _mobileNumberController,
                decoration: InputDecoration(labelText: 'Mobile Number'),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextField(
                controller: _pincodeController,
                decoration: InputDecoration(labelText: 'Pincode'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _houseNoController,
                decoration: InputDecoration(labelText: 'House No'),
              ),
              TextField(
                controller: _localityController,
                decoration: InputDecoration(labelText: 'Locality'),
              ),
              TextField(
                controller: _cityController,
                decoration: InputDecoration(labelText: 'City'),
              ),
              TextField(
                controller: _stateController,
                decoration: InputDecoration(labelText: 'State'),
              ),
              DropdownButton<String>(
                value: _selectedAddressType,
                onChanged: (newValue) {
                  setState(() {
                    _selectedAddressType = newValue!;
                  });
                },
                items: <String>['Home', 'Work']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Save address logic goes here
                  // Access values using _fieldNameController.text, _mobileNumberController.text, etc.
                  String fieldName = _fieldNameController.text;
                  String mobileNumber = _mobileNumberController.text;
                  String address = _addressController.text;
                  String pincode = _pincodeController.text;
                  String houseNo = _houseNoController.text;
                  String locality = _localityController.text;
                  String city = _cityController.text;
                  String state = _stateController.text;

                  // Example: Printing the values
                  print('Field Name: $fieldName');
                  print('Mobile Number: $mobileNumber');
                  print('Address: $address');
                  print('Pincode: $pincode');
                  print('House No: $houseNo');
                  print('Locality: $locality');
                  print('City: $city');
                  print('State: $state');
                },
                child: Text('Save Address'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

