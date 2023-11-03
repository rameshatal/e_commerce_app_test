import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color> selectedColors = [
    Colors.pink,
    Colors.grey,
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
  ];
   List<String> selectedSize = [
     "28" , "30", "32", "36",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Details"),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              height: 330,
              width: double.infinity,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.texmodel.ro/assets/images/index-products-01.jpg"),
                            fit: BoxFit.cover)),
                  );
                },
              ),
            ),
          ),
          Text(
            "Wool Coat Lapet Coller",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("*4.8(335) 212 reviwes"),
              ],
            ),
          ),
          SizedBox(
            height: 11,
          ),
        ReadMoreText(
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
          SizedBox(
            height: 11,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              itemCount: selectedColors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: selectedColors[index],
                    borderRadius: BorderRadius.circular(11),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Selecte size",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Size guide",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              itemCount: selectedSize.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(11),

                  ),
                  child: Text(selectedSize[index] ),
                );
              },
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price 99',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                //Text("172.99"),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(11)
                  ),
                  child: Center(child: Text("Add to Cart",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color: Colors.white),)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
