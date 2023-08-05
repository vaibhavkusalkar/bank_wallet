// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:bank_wallet/components/my_card.dart';
import 'package:bank_wallet/components/my_button.dart';
import 'package:bank_wallet/components/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color.fromRGBO(128,98,251,1),
            child: Icon(Icons.qr_code_scanner_rounded,size: 32),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.home_rounded,
                size: 37,
              ),
            ),
            SizedBox(width: 45),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 20),
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "My",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),

                //+ Button
                Container(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,

                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 25),

          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: "2,54,000",
                  cardNumber: "**** 1001",
                  expiryMonth: 04,
                  expiryYear: 28,
                  cardImg: "lib/assets/master3.png",
                  name: "Vaibhav Kusalkar",
                ),
                MyCard(
                  balance: "1,83,030",
                  cardNumber: "**** 5348",
                  expiryMonth: 11,
                  expiryYear: 23,
                  cardImg: "lib/assets/visa1.png",
                  name: "Vaibhav Kusalkar",
                ),
                MyCard(
                  balance: "23,523",
                  cardNumber: "**** 8826",
                  expiryMonth: 08,
                  expiryYear: 25,
                  cardImg: "lib/assets/visa2.png",
                  name: "Vaibhav Kusalkar",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
              dotHeight: 10,
              dotWidth: 10
            )
          ),
          SizedBox(height: 40),
          //3 buttons -> send , pay ,bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //send button
                MyButton(
                    icon: "lib/assets/send-money.png",
                    text: "Send"
                ),

                //pay button
                MyButton(
                    icon: "lib/assets/credit-card.png",
                    text: "Pay"
                ),

                //bills button
                MyButton(
                    icon: "lib/assets/bill.png",
                    text: "Bills"
                ),
              ],
            ),
          ),
          SizedBox(height: 42),

          //column  -> stats , transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                //statistics
                MyListTile(
                    icon: "lib/assets/statistics.png",
                    name: "Statistics",
                    desc: "Payments and Income"
                ),
                MyListTile(
                    icon: "lib/assets/transaction.png",
                    name: "Transactions",
                    desc: "Transaction History"
                ),
                //transactions
              ],
            ),
          )
        ]),
      ),
    );
  }
}