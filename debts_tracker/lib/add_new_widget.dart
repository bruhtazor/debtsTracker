import 'package:debts_tracker/add_new_page.dart';
import 'package:flutter/material.dart';

class AddNewWidget extends StatefulWidget {
  const AddNewWidget({Key? key}) : super(key: key);

  @override
  State<AddNewWidget> createState() => _AddNewWidgetState();
}

class _AddNewWidgetState extends State<AddNewWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const AddNewPage();
            },
          ),
        );
      },
      child: Container(
        width: (MediaQuery.of(context).size.height),
        height: 145,
        decoration: BoxDecoration(
          color: const Color(0xFF3C3C3C),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.only(top: 10),
        child: const Center(
            child: Text(
          "Add New",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
