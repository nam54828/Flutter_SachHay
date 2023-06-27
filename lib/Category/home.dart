import 'package:flutter/material.dart';
import 'package:sach_hay/Banner/banner.dart';
import 'package:sach_hay/components/new_update.dart';
import 'package:sach_hay/components/top_read.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:220,
              child: Expanded(
                child: banner(),
              ),
            ),
            Container(
              child: Text("Top 15 đọc nhiều" ,style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),),
            ),
            SizedBox(height: 300,child: top_read()),
            Container(
              child: Text("Mới cập nhật" ,style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w800),),
            ),
            SizedBox(height:300,child: new_update())
          ],
        ),
      ),
    );
  }
}
