import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/model/New.dart';
import 'package:baicuoiki/news/constant.dart';
import 'package:flutter/material.dart';


class Screen extends StatelessWidget {
  CardName? _cardNames;
  CardName? get cardNames => _cardNames;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 0),
              child: Row(
                children: [
                  CircleButton(
                    icon: Icons.arrow_back_ios,
                    onTap: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  CircleButton(
                    icon: Icons.favorite_border,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            const SizedBox(height: 12.0),
            Hero(
              tag: cardNames!.author,
              child: Container(
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(cardNames!.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 15.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGrey3, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 5.0,
                        backgroundColor: kGrey3,
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        cardNames!.category,
                        style: kCategoryTitle,
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                // Status(
                //   icon: Icons.remove_red_eye,
                //   total: CardNames.seen,
                // ),
                // const SizedBox(width: 15.0),
                // Status(
                //   icon: Icons.favorite_border,
                //   total: CardNames.favorite,
                // ),
              ],
            ),
            const SizedBox(height: 12.0),
            Text(cardNames!.title, style: kTitleCard.copyWith(fontSize: 28.0)),
            const SizedBox(height: 15.0),
            Row(
              children: [
                // Text(CardNames.time, style: kDetailContent),
                const SizedBox(width: 5.0),
                const SizedBox(
                  width: 10.0,
                  child: Divider(
                    color: kBlack,
                    height: 1.0,
                  ),
                ),
                const SizedBox(width: 5.0),
                Text(
                  cardNames!.author,
                  style: kDetailContent.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              cardNames!.content,
              style: descriptionStyle,
            ),
            const SizedBox(height: 25.0)
          ],
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  final IconData icon;
  final String total;
  const Status({required this.icon, required this.total});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: kGrey2),
        const SizedBox(width: 4.0),
        Text(total, style: kDetailContent),
      ],
    );
  }
}
