import 'package:flutter/material.dart';
import 'package:sach_hay/BottomBar/Book/leading_book.dart';

import '../../Category/business.dart';
import '../../Category/calm_down.dart';
import '../../Category/home.dart';
import '../../Category/life_skills.dart';
import '../../Category/love_story.dart';
import '../../Category/novel.dart';
import '../../Category/vh_xh.dart';

class header_Book extends StatefulWidget {
  const header_Book({Key? key}) : super(key: key);

  @override
  State<header_Book> createState() => _header_BookState();
}
class _header_BookState extends State<header_Book> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _search = TextEditingController();
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
              labelColor: Colors.grey,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(text: "Trang chủ",icon: null,),
                Tab(text: "Kỹ năng sống",icon: null,),
                Tab(text: "Tĩnh Tâm",icon: null,),
                Tab(text: "Tiểu thuyết",icon: null,),
                Tab(text: "VH-XH",icon: null,),
                Tab(text: "Kinh doanh",icon: null,),
                Tab(text: "Ngôn tình",icon: null,),
              ],
          ) ,
          leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => leading_book()));
            },
            icon: Icon(Icons.density_medium, color: Colors.white, size: 20,),
          ),
          title: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(32)
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.white54,),
                SizedBox(width: 5,),
                Expanded(child: TextFormField(
                  controller: _search,
                  decoration: InputDecoration(
                    hintText: "Tên sách, tên tác giả",
                    border: InputBorder.none

                  ),
                ))
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            home(),
            life_skills(),
            calm_down(),
            novel(),
            vh_xh(),
            business(),
            love_story()
          ],
        ),
      ),
    );
  }
}

