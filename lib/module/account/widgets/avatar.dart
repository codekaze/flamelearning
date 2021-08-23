import 'package:flutter/material.dart';

// card profil
import 'card_profil.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardProfil(
      height: 124,
      width: 124,
      border: 124 / 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          ),
        ),
      ),
    );
  }
}