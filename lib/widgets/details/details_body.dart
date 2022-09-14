import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import '../../models/products.dart';
import './product_image.dart';
import './color_dot.dart';


class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          child: Column(
            children: [
              ProductImage(size: size, image: product.image,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Text(product.title, style: Theme.of(context).textTheme.headline6,),
              const SizedBox(
                height: 15,
              ),
              Text("Price: \$${product.price}",style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor,
              ),),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5,
          vertical: kDefaultPadding / 2,
          ),
          child: Text(product.description, style: const TextStyle(
            color: Colors.white,
            fontSize: 19.0,
          ),),
        )
      ],
    );
  }
}





