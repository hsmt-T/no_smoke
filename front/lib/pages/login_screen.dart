import 'package:flutter/material.dart';
import './top_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SignUP
            Text(
              'SignUP',
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE74545),
              ),
            ),

            //or
            Text(
              'or',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE74545),
              ),
            ),

            //LOgin
            Text(
              'Login',
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE74545),
              ),
            ),

            const SizedBox(height: 135),

            //LINE連携ボタン
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TopScreen()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF742424)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ), // 丸み
                ),
                minimumSize: MaterialStateProperty.all(Size(300, 60)),
              ),
              child: Text(
                'LINEと連携',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
