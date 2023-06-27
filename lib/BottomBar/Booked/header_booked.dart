import 'package:flutter/material.dart';
import 'package:sach_hay/BottomBar/Booked/empty_library.dart';

import '../../components/clock.dart';
class header_Booked extends StatelessWidget {
  const header_Booked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Thư viện", style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )),
        actions: [
            IconButton(onPressed: (){
              showModalBottomSheet(
                isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context){
                return Scaffold(
                  backgroundColor: Colors.black,
                  appBar: AppBar(
                    backgroundColor: Colors.black38,
                    centerTitle: true,
                    title: Text("Nhắc nhở đọc sách", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),),
                    actions: [
                      IconButton(onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close, size: 22, color: Colors.white,))
                    ],
                  ),
                  body: clock()
                );
                  });
            },
                icon: Icon(Icons.lock_clock, size: 26, color:  Colors.white,))
        ],
      ),
      body: Center(child: empty_library()),
    );
  }
}
