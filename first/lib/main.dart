import 'package:flutter/material.dart';
import 'package:toon/widgets/button.dart';
import 'package:toon/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// App Widget은 root 이다.
class App extends StatelessWidget {
  const App({super.key});

  // flutter SDK에 있는 3개의 core widget 중에 하나를 extend받아야 함
  // StatelessWidget를 받았고, build 메서드를 구현해야 함

  // build 메서드는 flutter가 뭘 return 하던지간에 보여줌
  @override
  Widget build(BuildContext context) {
    // MaterialApp(구글), CupertinoApp(애플 시스템) 중 하나를 리턴해야 함
    // 어떤 family 스타일을 리턴할지 결정
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Jiyeon',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Welcome Here!',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: "Transfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const CurrencyCard(
                      cardColor: false,
                      cardText: 'Euro',
                      cardNum: '6 428',
                      cardCountry: 'EUR',
                      cardIcon: Icons.euro_rounded),
                  Transform.translate(
                    offset: const Offset(0, -25),
                    child: const CurrencyCard(
                        cardColor: true,
                        cardText: 'Bitcoin',
                        cardNum: '9 785',
                        cardCountry: 'BTC',
                        cardIcon: Icons.currency_bitcoin_rounded),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -50),
                    child: const CurrencyCard(
                        cardColor: false,
                        cardText: 'Dollar',
                        cardNum: '428',
                        cardCountry: 'USD',
                        cardIcon: Icons.attach_money_rounded),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
