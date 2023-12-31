import 'package:awesome_flutter/colors/constan.dart';
import 'package:awesome_flutter/login/log8in.dart';
import 'package:awesome_flutter/main_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttonOnboard extends StatefulWidget {
  const buttonOnboard({
    super.key,
  });

  @override
  State<buttonOnboard> createState() => _TombolState();
}

class _TombolState extends State<buttonOnboard> {
  void _showModal(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pesan'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 230,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.white54)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.abu),
              ),
              onPressed: () {
                // Menampilkan pesan modal untuk "Scan ID"
                _showModal('Nantikan fiturnya...');
              },
              child: const Text(
                'Scan ID',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(height: 20), // Memberikan jarak antar tombol
          SizedBox(
            width: 230,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.white54)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.abu),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Login(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(opacity: animation, child: child);
                      }),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(height: 20), // Memberikan jarak antar tombol
          SizedBox(
            width: 230,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.white54)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.abu),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const MainScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(opacity: animation, child: child);
                      }),
                );
              },
              child: const Text(
                'Masuk',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
