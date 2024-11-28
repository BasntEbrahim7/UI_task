import 'package:flutter/material.dart';

class SettingTextField extends StatefulWidget {



  const SettingTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingTextField> createState() => _SettingTextFieldState();
}

class _SettingTextFieldState extends State<SettingTextField> {
  @override




  Widget build(BuildContext context) {
    String? selectedDatabase = "خارجي";
    String? selectedProtocol = "http://";
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: DropdownButtonFormField<String>(
            value: selectedDatabase,
            iconDisabledColor: Color(0xFF0072DD ),
            iconEnabledColor:  Color(0xFF0072DD),
            iconSize: 30,

            items: [
              DropdownMenuItem(value: "خارجي", child: Text("خارجي")),
              DropdownMenuItem(value: "داخلي", child: Text("داخلي")),
            ],
            onChanged: (value) {
              setState(() {
                selectedDatabase = value;
              });
            },
            decoration: InputDecoration(
              labelText: "Choose Database",
              labelStyle: TextStyle(color: Colors.black),

              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0072DD)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xFF0072DD)),
              ), enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),         ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(11.0),
          child: DropdownButtonFormField<String>(
            value: selectedProtocol,
            iconSize: 30,


            iconDisabledColor: Color(0xFF0072DD ),
            iconEnabledColor:  Color(0xFF0072DD),
            items: [
              DropdownMenuItem(value: "http://", child: Text("http://")),
              DropdownMenuItem(value: "https://", child: Text("https://")),
            ],
            onChanged: (value) {
              setState(() {
                selectedProtocol = value;
              });
            },
            decoration: InputDecoration(
              labelText: "Protocol",
              labelStyle: TextStyle(color: Colors.black),


              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0072DD)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color(0xFF0072DD)),
              ), enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),         ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(11.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "API link",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(11.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "Name of Instance ",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
        ],
    );
  }
}