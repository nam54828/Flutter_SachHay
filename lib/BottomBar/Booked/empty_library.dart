import 'package:flutter/material.dart';
class empty_library extends StatelessWidget {
  const empty_library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center, // dọc
        children: [
          Text("Danh sách trống. Bạn hãy chọn \n sách yêu thích để đọc nhé.", style: TextStyle(
            color: Colors.white38,
            fontSize: 18,
          ),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){},
              child: Text("Chọn Sách"),
          style: ElevatedButton.styleFrom(
            primary: Colors.grey, // background
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          ),)
        ],
    );
  }
}
