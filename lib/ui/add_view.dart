import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  const AddView({Key? key}) : super(key: key);

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  final List<String> _coins = ['bitcoin', 'tether', 'ethereum'];
  String? dropDownValue = 'bitcoin';
  final TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: dropDownValue,
            onChanged: (String? value) {
              setState(() {
                dropDownValue = value;
              });
            },
            items: _coins.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              controller: _amountController,
              decoration: const InputDecoration(
                hintText: 'amount',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                labelText: 'Coin Amount',
                labelStyle: TextStyle(
                  color: Colors.cyanAccent,
                ),
              ),
              //keyboardType: TextInputType.text,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0), // border color
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () async {
                //TODO:
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
