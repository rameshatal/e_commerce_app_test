import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectButton = 0;

    final List Categories = ["Laptop", "phone", "Cloth", "Jens", "Tsurt", "Tv"];
    final List Collection = [
      "kurta : 299",
      "Salwar: 390",
      "Duppata: 120",
      "jeans:599",
      "Legi:120",
      "Kurti:250",
      "kurta : 299",
      "Salwar: 390",
      "Duppata: 120",
      "jeans:599",
      "Legi:120",
      "Kurti:250",
      "Legi:120",
      "Kurti:250",
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 18),
          child: Column(
            children: [
              Card(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search here..",
                      prefixIcon: Icon(
                        Icons.search_rounded,
                      ),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                child: Container(
                  height: 170,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 500,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/id/1218666423/photo/young-smiling-asian-woman-holding-multi-coloured-shopping-bags-and-looking-on-light-yellow.jpg?s=612x612&w=0&k=20&c=z5uracAjA4QwbO8Hrs05j7Pqrgji8s0aOlT82vdsSgI="),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New\nCollection",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                "Shop Now",
                                style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                              ),
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Cotegories",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.builder(
                  itemCount: Categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Card(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(child: Text(Categories[index])),
                      )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: Collection.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1132411052/photo/young-woman-with-curly-hair-isolated-over-bright-colorful-background.jpg?s=612x612&w=0&k=20&c=0CbYsUgqx5oOmAFkgBxg4ChQyIyLIYFBvV_kAT1m3zE="),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Collection[index]),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    /*  bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54, items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined),)
          BottomNavigationBarItem(label: "Favorite", icon: Icon(Icons.favorite_rounded),),
          BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person), ),
        ],
       currentIndex:  selectButton,
        onTap: (value) {
          setState(() {
            selectButton = value;
          });
        },
      ),*/
    );
  }
}
