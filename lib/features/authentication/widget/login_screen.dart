import 'package:chat/features/authentication/widget/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(padding: EdgeInsets.all(10),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LOGIN",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text("Login now to browse out hot offers"),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline_outlined,color: Colors.blue,),
                      labelText: "Email Address",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline,),
                      labelText: "Password",
                      suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                SizedBox(width: double.infinity,
                  child:   ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (){
                        },
                      child: Text("LOGIN",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                  ),
                ),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("dont have an account?"),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Register();
                              }));
                        },
                          child: Text("REGISTER",
                            style: TextStyle(
                                color: Colors.blue
                            ),
                          ),
                        )
                  ],
                )

              ],
            ),
          )
      ),
    );
  }
}