import 'package:flutter/material.dart';

import 'widgets/searchbody.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SearchBody(),
      ),
    ) ;
  }
}
