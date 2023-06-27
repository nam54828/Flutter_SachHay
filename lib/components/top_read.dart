import 'package:flutter/material.dart';

class top_read extends StatefulWidget {
  const top_read({Key? key}) : super(key: key);

  @override
  State<top_read> createState() => _top_readState();
}

class _top_readState extends State<top_read> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) =>Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network("https://thienduongtruyen.com/wp-content/uploads/2021/11/99-la-thu-gui-cho-chinh-minh.jpg",
                height: 220, width: 150, fit: BoxFit.fill,),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              child: Text("999 Lá Thư Gửi Cho Chính Mình", style: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.ellipsis
              ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Miêu Công Tử",style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    ));
  }
}
