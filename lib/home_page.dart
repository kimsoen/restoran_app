import 'package:flutter/material.dart';
import 'package:restaurant_app/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Hi kims, \nGood Morning",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined, size: 40),
            ),
          ],
        ),
      );
    }

    Widget category() {
      return const Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            CategoryItems(
              imgUrl: "assets/food.png",
              title: "food",
              colorC: Colors.blue,
            ),
            CategoryItems(
              imgUrl: "assets/drink.png",
              title: "drink",
              colorC: Colors.yellow,
            ),
            CategoryItems(
              imgUrl: "assets/food.png",
              title: "food",
              colorC: Colors.green,
            ),
            CategoryItems(
              imgUrl: "assets/drink.png",
              title: "drink",
              colorC: Colors.red,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "POPULER",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopulerItems(
                  imgUrl: "assets/pizza.png",
                  title: "Pizza Hut",
                  price: "\$10",
                ),
                PopulerItems(
                  imgUrl: "assets/burger.png",
                  title: "Burger king",
                  price: "\$10",
                ),
                PopulerItems(
                  imgUrl: "assets/beef.png",
                  title: "beef steack",
                  price: "\$10",
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          header(),
          category(),
          content(),
        ],
      )),
    );
  }
}

class PopulerItems extends StatelessWidget {
  const PopulerItems(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.price});

  final String imgUrl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detailPage(),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(10),
        height: 180,
        width: 135,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                imgUrl,
                width: 100,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItems extends StatelessWidget {
  const CategoryItems(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.colorC});
  final String title;
  final String imgUrl;
  final Color colorC;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 67,
          width: 66,
          decoration: BoxDecoration(
            color: colorC,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(title)
      ],
    );
  }
}
