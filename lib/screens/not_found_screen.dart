import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'The Requested route not found!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('back to previous screen')),
            )
          ],
        ),
      ),
    );
  }
}
