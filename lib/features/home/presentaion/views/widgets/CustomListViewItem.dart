import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class CustomListView_Item extends StatelessWidget {
   CustomListView_Item({Key? key,required this.imageurl}) : super(key: key);
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageurl,
          errorWidget:(context,url,error)=>const Icon(Icons.error_outline_sharp),
          placeholder: (context,url)=>const Center(child:CircularProgressIndicator()),
        ),
      ),
    );
  }
}
