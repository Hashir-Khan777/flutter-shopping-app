import 'package:flutter/material.dart';
import 'package:fluttershoppingapp/Views/cart_screen.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: ListTile(
            title: const Text(
              'Shopping App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: GestureDetector(
              onTap: () {
                Get.to(const Cart());
              },
              child: const Icon(
                Icons.shopping_basket,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(context),
                card(context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(context),
                card(context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(context),
                card(context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(context),
                card(context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(context),
                card(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.4,
    height: MediaQuery.of(context).size.height * 0.48,
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 230,
          child: Image.asset(
            'assets/image1.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Turkish Tracksuit Black + Red Suit For Men 2...',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 3, bottom: 3),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 22,
                    ),
                  ),
                  const Text(
                    '5.0 (23 reviews)',
                    style: TextStyle(color: Colors.black26),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('20 Pieces'),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '\$90',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                shadowColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.purple,
                    size: 20,
                  ),
                  Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.purple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
