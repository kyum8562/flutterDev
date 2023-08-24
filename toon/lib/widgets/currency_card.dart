import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final bool cardColor;
  final String cardText;
  final String cardNum;
  final String cardCountry;
  final IconData cardIcon;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.cardColor,
    required this.cardText,
    required this.cardNum,
    required this.cardCountry,
    required this.cardIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: cardColor ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardText,
                  style: TextStyle(
                      color: cardColor ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      cardNum,
                      style: TextStyle(
                        color: cardColor ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      cardCountry,
                      style: TextStyle(
                        color: cardColor
                            ? _blackColor
                            : Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  cardIcon,
                  color: cardColor ? _blackColor : Colors.white,
                  size: 90,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
