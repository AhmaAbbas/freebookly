
import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({Key? key,required this.error}) : super(key: key);
  final String error;
  @override
  Widget build(BuildContext context) {
    return Text(error,style: Styles.titlestyle18,);
  }
}
