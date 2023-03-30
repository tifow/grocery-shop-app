import 'package:flutter/material.dart';
import 'package:grocery_shop/all_pages/shop_page.dart';

class grocery_item extends StatelessWidget {
  final image;
  final color;
  final price;
  final itemname;
  void Function()? onPressed;
  grocery_item(
      {super.key,
      this.color,
      required this.image,
      required this.itemname,
      required this.price,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(itemname,
                    style: TextStyle(
                        fontSize: 17, color: Colors.black.withOpacity(.55))),
              ),
              MaterialButton(
                onPressed: onPressed,
                child: Text(
                  "\$ ${price}",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple[400],
              )
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     margin: EdgeInsets.only(bottom: 10),
              //     padding:
              //         EdgeInsets.only(left: 24, top: 10, right: 24, bottom: 10),
              //     decoration: BoxDecoration(
              //         color: Colors.deepPurple,
              //         borderRadius: BorderRadius.circular(5)),
              //     child: Text(
              //       "\$ ${price}",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
