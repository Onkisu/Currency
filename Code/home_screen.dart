import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'CURRENCY CONVERTER',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildCurrency(
                urlFlag:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Japan_%281870%E2%80%931999%29.svg/220px-Flag_of_Japan_%281870%E2%80%931999%29.svg.png',
                nameCountry: 'JAPAN',
                currency: 'YEN',
                symbol: '\¥'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.indigo.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ]),
                  child: Center(
                    child: Text(
                      '=',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  //width: 50,
                  decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.indigo)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/icon1.png',
                          height: 30,
                        ),
                        Text('Switch Currencies',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            _buildCurrency(
                urlFlag:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/800px-Flag_of_South_Korea.svg.png',
                nameCountry: 'South Korea',
                currency: 'KRW',
                symbol: '₩')
          ],
        ),
      ),
    );
  }

  Container _buildCurrency(
      {String urlFlag = '',
      String nameCountry = '',
      String currency = '',
      String symbol = ''}) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    urlFlag,
                    height: 30,
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nameCountry,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      Text(currency,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
            TextField(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  hintText: '0.0',
                  suffixIcon: Text(
                    symbol,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  suffixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0)),
            )
          ],
        ),
      ),
    );
  }
}
