import 'package:coworkspace/models/CoWorkModel.dart';

import 'package:coworkspace/widgets/rating.dart';
import 'package:flutter/material.dart';

Widget CoWorkItem({required CoWorkModel  coWork}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      elevation: 10,
      child: ListTile(
        title: Text(coWork.name.toString()),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(coWork.address.toString()),
            StarRating(rating: coWork.rating!.toDouble(),color: Colors.amber,)
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12
          ),
          child: Image.network( 'http://okoolextra.com/${coWork.images![0].imageUrl}',
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                    : null,
              );
            },
          ),
        ),
      ),
    ),
  );
}
