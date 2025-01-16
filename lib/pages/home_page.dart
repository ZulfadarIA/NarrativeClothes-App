import 'package:flutter/material.dart';
import 'package:narrative_clothes1/pages/cart_page.dart';
import 'package:narrative_clothes1/pages/notification_page.dart';
import 'package:narrative_clothes1/widgets/card_item.dart';
import 'package:narrative_clothes1/widgets/seacrh_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //   height: 70,
                //   width: 110,
                //   margin: const EdgeInsets.fromLTRB(4, 0, 150, 0),
                //   padding: const EdgeInsets.all(10),
                //   child: Image.asset(
                //     'images/logo_dark.png',
                //   ),
                // ),
                SearchBarCustom(),
                SizedBox(
                  width: 40,
                ),
                Flexible(
                  child: IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.notifications),
                    iconSize: 28.0,
                    padding: const EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return NotificationPage();
                        }),
                      );
                    },
                  ),
                ),
                Flexible(
                  child: IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.shopping_cart),
                    iconSize: 28.0,
                    padding: const EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return CartPage();
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Get the best fashion items at affordable prices!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Oswalds',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 0, 10),
              child: const Text(
                'Popular Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Archivo',
                ),
              ),
            ),
            const CardItem(gridCount: 2),
          ],
        ),
      ),
    );
  }
}
