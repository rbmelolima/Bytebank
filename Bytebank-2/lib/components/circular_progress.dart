import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Text('Aguarde...'),
        ],
      ),
    );
  }
}
