import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import '../widgets/product_cart.dart';
import '../screens/details_page.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
              ),
              ListView.builder(
                itemCount: products.length,
               itemBuilder: (context, i) =>  ProductCard(
                 product: products[i],
                 itemIndex: i,
                 press: (){
                   WidgetsBinding.instance.addPostFrameCallback((_) {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(
                       product: products[i],
                     )));
                   });
                 },
               ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

