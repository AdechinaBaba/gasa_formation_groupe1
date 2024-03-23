import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../components/input_widget.dart';
import '../components/icon_widget.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Text("Sign in with \nEmail / Mobile Number",
              style: TextStyle(
                color: bleu,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text("We are waiting for you Sing in and start your journey with us",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            InputWidget(text: "Email Address"),
            InputWidget(text: "Password"),
            SizedBox(height: 10,),
            Text("Forgot Your Password?",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: orange
              ),
            ),
            SizedBox(height: 25,),
            Text("Or Continue with",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: bleu,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(icone: Icons.cable),
                IconWidget(icone: Icons.cable),
                IconWidget(icone: Icons.cable),
              ],
            ),
            SizedBox(height: 180,),
            Container(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                  child: Text("Sign In"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(orange),
                  foregroundColor: MaterialStatePropertyAll(blanc),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Text(" Sign up",
                  style: TextStyle(
                      color: orange,
                      fontSize: 18
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
