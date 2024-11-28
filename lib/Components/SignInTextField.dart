import 'package:flutter/material.dart';

class SignInTextField extends StatefulWidget {



  const SignInTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInTextField> createState() => _SettingTextFieldState();
}

class _SettingTextFieldState extends State<SignInTextField> {
  @override
  bool _obscureText = true;
  String? selectedLanguage = "Arabic - العربية";



  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField<String>(
              value: selectedLanguage,
              iconSize: 25,
              iconDisabledColor: Color(0xFF0072DD ),
              iconEnabledColor:  Color(0xFF0072DD),
              items: [

                DropdownMenuItem(value: "Arabic - العربية", child: Text("Arabic - العربية")),
                DropdownMenuItem(value: "English", child: Text("English")),
              ],
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Language",
                labelStyle: TextStyle(color: Colors.black),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color(0xFF0072DD), ),
              ),
              )),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon:Image.asset("assets/Icons/user.png")
            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            obscureText: _obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: BorderSide(color: Color(0xFF0072DD)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color(0xFF0072DD),),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color(0xFF0072DD)),
              ),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.black),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xFF0072DD),
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "Branch",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon:Image.asset("assets/Icons/branch.png")
            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD),),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "Inventory",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon:Image.asset("assets/Icons/inventory.png")
            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Color(0xFF0072DD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Color(0xFF0072DD)),
                ),enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xFF0072DD)),
            ),
                labelText: "Cashier",
                labelStyle: TextStyle(color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon:Image.asset("assets/Icons/cashier.png")
            ),
          ),
        ),



      ],
    );
  }
}