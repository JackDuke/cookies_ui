import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/pages/home/widgets/container_arrow.dart';
import 'package:cookies_ui/pages/home/widgets/premium.dart';
import 'package:flutter/material.dart';

class HorizontalCookieCard extends StatelessWidget {
  const HorizontalCookieCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.14,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset("assets/4.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Double\nchocolate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Premium()
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "20 USD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "10 USD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Positioned(
          right: 0, 
          bottom: 0,
          child: ContainerArrow(),
          )
      ],
    );
  }
}