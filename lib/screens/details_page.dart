import 'package:flutter/material.dart';
import '../models/products.dart';
import '../widgets/details/details_body.dart';
import 'package:store_app/constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },
          color: kPrimaryColor,
        ),
        title: Text("Back", style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: ListView(
        children: [
          DetailsBody(
            product: product,
          ),
        ],
      )
    );
  }
}
