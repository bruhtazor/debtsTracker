import 'package:debts_tracker/modify_widget_page.dart';
import 'package:flutter/material.dart';

class ModifyDebt extends StatefulWidget {
  const ModifyDebt({Key? key}) : super(key: key);

  @override
  State<ModifyDebt> createState() => _ModifyDebtState();
}

class _ModifyDebtState extends State<ModifyDebt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("modify debt"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.clear),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ModifyWidgetPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SizedBox(
            child: Column(
              children: [
                const Text(
                  "debts : 100chf",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "last modified: 27/06/2022",
                  style: TextStyle(
                      color: Color.fromARGB(60, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    decoration: const InputDecoration(
                      hintText: "  Amount",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 90, 90, 90),
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('yup')));
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.height) / 4.5,
                        height: 100,
                        color: Colors.green,
                        child: const Icon(
                          Icons.add,
                          size: 40.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('nope')));
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.height) / 4.5,
                        height: 100,
                        color: Colors.red,
                        child: const Icon(
                          Icons.remove,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
