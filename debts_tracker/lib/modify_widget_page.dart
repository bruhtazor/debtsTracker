import 'package:flutter/material.dart';
import 'form_widget.dart';

class ModifyWidgetPage extends StatelessWidget {
  const ModifyWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modify debt tracker"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.clear),
        ),
      ),
      body: const FormWidget(),
    );
  }
}
