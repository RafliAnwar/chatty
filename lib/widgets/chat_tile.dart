import 'package:bwa_chatty/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessagePage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              height: 55,
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: titleTextStyle,
                  ),
                  Text(
                    text,
                    style: unread
                        ? subtitleTextStyle.copyWith(color: blackColor)
                        : subtitleTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              time,
              style: subtitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
