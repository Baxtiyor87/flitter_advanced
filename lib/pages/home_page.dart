import 'package:flitter_advanced/service/log_service.dart';
import 'package:flitter_advanced/service/utils_service.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Module 6'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
                onPressed:(){
                Utils.showToast('Welcome to PDP',);
              Utils.deviceParams().then((value) => {
              LogService.i(value.toString())
              });
              // Utils.makePhoneCall('+998 90 136 61 11');
                Utils.launchInBrowser(Uri.parse('https://online.pdp.uz/'));
              LogService.d('PDP Online');
              LogService.i('PDP Online');
              LogService.w('PDP Online');
              LogService.e('PDP Online');
;            },
            child:const Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
