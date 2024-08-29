import 'package:flutter/material.dart';
import 'package:omomen/view/bottom_nav_bar.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: Image.network(
                "https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?t=st=1723528095~exp=1723531695~hmac=6eb37d84d0b2df449521cbfe0d78148fd5d9c99a1e0b59aae17b1611c687ad44&w=1060",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Center(
                  child: Text(
                    "Welcome to \n BurgerQuest",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.45,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      const Text(
                        "Good food \n and Tasty!",
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 43,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(225, 172, 109, 8),
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottomNavBar(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber.shade800,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(14),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an Account",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white70),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}