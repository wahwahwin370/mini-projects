import 'package:flutter/material.dart';
import 'package:testing14_login_form/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  var _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('House \nPlants', style:  TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold
                    ),),

                    SizedBox(height: 20,),
                    TextFormField(
                      onSaved: (str){
                        print(str);
                      },
                      validator: (str){
                        if (str == null || str.isEmpty) {
                          return "required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "First Name",
                      ),
                    ),

                    TextFormField(
                      onSaved: (str){
                        print(str);
                      },
                      validator: (str){
                        if (str == null || str.isEmpty) {
                          return "required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Last Name"
                      ),
                    ),

                    TextFormField(
                      onSaved: (str){
                        print(str);
                      },
                      validator: (str){
                        if (str == null || str.isEmpty) {
                          return "required";
                        }
                        final emailRegex = RegExp(
                          r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                        );
                        if (!emailRegex.hasMatch(str)) {
                          return 'invalid email';
                        }
                        if(!str.endsWith('@gmail.com')){
                          return 'invalid gmail';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Email"
                      ),
                    ),

                    TextFormField(
                      onSaved: (str){
                        print(str);
                      },
                      validator: (str){
                        if (str == null || str.isEmpty) {
                          return "required";
                        }
                        if(str.length<5){
                          return "at least 5 letter";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password"
                      ),
                    ),

                    SizedBox(height: 40,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState?.save();
                          }
                        },
                          child: Text('Register', style: TextStyle(
                            color: Colors.green
                          ),)
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return LoginPage();
                            }
                            ));
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                          ),
                          child: Text('Sign in',style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
