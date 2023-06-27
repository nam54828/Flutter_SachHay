import 'package:flutter/material.dart';

class life_skills extends StatefulWidget {
  const life_skills({Key? key}) : super(key: key);

  @override
  State<life_skills> createState() => _life_skillsState();
}

class _life_skillsState extends State<life_skills> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // trên màn hình
        crossAxisSpacing: 2.0, // ngang
         mainAxisExtent: 300 // dọc hiển thị widget là 300
    ),
        itemBuilder: (context, index) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network("https://thienduongtruyen.com/wp-content/uploads/2021/11/99-la-thu-gui-cho-chinh-minh.jpg",
                    fit: BoxFit.fill,),
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