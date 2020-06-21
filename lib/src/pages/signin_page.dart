import 'package:flutter/material.dart';
import '../pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibility = true;
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
        suffixIcon: IconButton(
            icon: _toggleVisibility
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            }),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildEmailTextField(),
                    SizedBox(height: 20),
                    _buildPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have an account ?',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => SignUpPage());
                    Navigator.of(context).pushReplacement(route);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
