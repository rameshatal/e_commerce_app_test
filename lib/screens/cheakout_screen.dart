import 'package:flutter/material.dart';

class CheakoutScreen extends StatefulWidget {
  const CheakoutScreen({super.key});

  @override
  State<CheakoutScreen> createState() => _CheakoutScreenState();
}

class _CheakoutScreenState extends State<CheakoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cheakout"),
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Container(
        height: 900,
        width: 500,
        child: Column(
          children: [
            Container(
              height: 120,
              width: 390,
              decoration: BoxDecoration(
                color: Color(0xffC2C2C2),
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 40,
                        ),
                        Text(
                          "Delivering to",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 21, color: Colors.blue.shade600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 35),
                    child: Text(
                      "Missouri,Canton,285W Peace St",
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 21, vertical: 11),
                    child: Stack(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone_8087-3877.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Crewneck Sweatshirt",
                                    style: TextStyle(fontSize: 21),
                                  ),
                                  Text(
                                    "Size:36  .Color:Brown",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "89.99",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                                borderRadius: BorderRadius.circular(5)),
                            height: 30,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.remove),
                                Text("1"),
                                Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Rs.",
                        style: TextStyle(fontSize: 21),
                      ),
                      Text(
                        "\$216.20",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Rs.",
                        style: TextStyle(fontSize: 21),
                      ),
                      Text(
                        "\$216.20",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Rs.",
                        style: TextStyle(fontSize: 21),
                      ),
                      Text(
                        "\$216.20",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(11)),
                        child: Center(
                            child: Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white),
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
