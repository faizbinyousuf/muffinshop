import 'package:MuffinShop/src/pages/signin_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }

  Widget _buildUserNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }

  Widget _buildMobileTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Mobile Number',
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

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Confirm password',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
        suffixIcon: IconButton(
            icon: _toggleConfirmVisibility
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _toggleConfirmVisibility = !_toggleConfirmVisibility;
              });
            }),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildUserNameTextField(),
                    SizedBox(height: 20),
                    _buildEmailTextField(),
                    SizedBox(height: 20),
                    _buildMobileTextField(),
                    SizedBox(height: 20),
                    _buildPasswordTextField(),
                    SizedBox(height: 20),
                    _buildConfirmPasswordTextField(),
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
                  'Sign Up',
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
                  'Already have an account ?',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage());
                    Navigator.of(context).pushReplacement(route);
                  },
                  child: Text(
                    'Sign in',
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
