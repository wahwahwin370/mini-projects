import 'package:flutter/material.dart';
import 'package:testing14_login_form/register_page.dart';

class LoginPage extends StatefulWidget {
 // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea( //safeArea
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form ( //use Form
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('House \nPlants',style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0
                    ),),
                    SizedBox(height: 20.0,),
                    TextFormField( //use TextFormField for vilidate
                      onSaved: (a){ //can use any var in a
                        print(a); //the email we enter
                      },
                      validator: (str){
                        if (str == null || str.isEmpty) {
                          return 'required email';
                        }
                        final emailRegex = RegExp(
                          r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                        );
                        if (!emailRegex.hasMatch(str)) {
                          return 'invalid email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(height: 10.0,),

                    TextFormField(
                      validator: (str){
                        if (str != null && str.isEmpty) {
                          return 'required password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(height: 40.0,),

                    Container(
                      width: double.infinity, //100% width
                      child: ElevatedButton(
                          onPressed: (){
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState?.save();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                            foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Change button color
                          ),
                          child: Text('Sign in')),
                    ),
                    Container(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return RegisterPage();
                            }
                            ));
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                          ),
                          child: Text('Register')),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
