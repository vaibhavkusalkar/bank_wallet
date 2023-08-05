import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String cardImg;
  final String name;
  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.cardImg,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            //color: color,
            image: DecorationImage(
              image: AssetImage(cardImg),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  "Card",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11
                  ),
                ),
                //card expiry
                Text(
                  "Expiry",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  cardNumber,
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 16
                  ),
                ),
                //card expiry
                Text(
                  expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 16
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Balance",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                balance + "₹",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                ),
              ),
            ),
            SizedBox(height: 33),
            Text(
                name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}
