
import 'package:flutter/material.dart';

import 'widgets/bookdetailsbody.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetails_Body(),
      ),
    );
  }
}
