import 'package:flutter/material.dart';

class clock extends StatefulWidget {
  const clock({Key? key}) : super(key: key);

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.timer_outlined, color: Colors.white, size: 90,),
          Text("Cho phép ứng dụng gửi Notification nhắc nhở\n bạn đọc sách hàng ngày với những câu nói hay\n và đầy ý nghĩa về sách.", textAlign: TextAlign.center, style: TextStyle(
              color: Colors.white,
            height: 1.5
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text("Lưu Nhắc Nhở", style: TextStyle(
                        color: Colors.white
                      ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text("Hủy Nhắc Nhở", style: TextStyle(
                        color: Colors.grey
                      ),))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
