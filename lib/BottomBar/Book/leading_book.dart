import 'package:flutter/material.dart';
class leading_book extends StatelessWidget {
  const leading_book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Giới Thiệu", style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Ứng dụng *Sach Hay* hoạt động với mong muốn lan tỏa tình yêu với quí đọc giả, giúp quí đọc giả tiếp cận những cuốn sách được cộng động người đọc đánh giá cao một cách nhanh chóng."
                      "\n\n*Sach Hay* được phát triển bởi đội ngũ những người yêu sách, không phụ thuộc bất kỳ tổ chức hay công ty nào"
                      "\n\n Lưu ý:"
                      "\n \t \t \t \u2022 *Sach Hay* không bán sách, không yêu cầu đăng nhập tài khoản cũng như thông tin người dùng"
                      "\n \t \t \t \u2022 Toàn bộ các cuốn sách được *Sach Hay* cung cấp đều là miễn phí, dù vậy chúng tôi luôn khuyến khích độc giả mua sách giấy và chỉ tải ebook khi không tìm thấy ở nơi nào khác."
                      "\n \nToàn bộ sách trong ứng dụng *Sach Hay* không phải do chúng tôi sản xuất mà được sưu tầm từ nhiều nguồn có sẵn trên internet được cộng đồng chia sẻ, ví dụ như: sachvui.com,\ndtv-ebook.com,facebook.com,..."
                      "\n \nDo được sưu tập từ nhiều nguồn nên một số cuốn sách có thể bị thiếu nội dung hoặc nhầm lẫn chi tiết, rất mong quí đọc giả thông cảm và báo lại cho *Sach Hay* để chúng tôi kịp thời bổ sung và sửa đổi."
                      "\n \t \t \t \u2022 Nếu quí đọc giả thấy nội dung sách hữu ích hãy tìm cách ủng hộ tác giả cũng như các soạn giả đã tạo ra những cuốn sách này."
                      "\n \t \t \t \u2022 Nếu bạn là chủ sở hữu của nội dung hoặc những cuốn sách có trên *Sach Hay* mà không muốn giới thiệu cộng đồng xin vui lòng iên hệ với *Sach Hay* qua địa chỉ email: dnam37035@gmail.com, chúng tôi sẽ gỡ sách xuống trong thời gian sớm nhất."
                      "\n \t \t \t \u2022 Có quá nhiều những cuốn sách hay đáng để đọc trong đời, chúng tôi vẫn tiếp tục tìm kiếm và sưu tập để gửi đến quí đọc giả sớm nhất có thể."
                      "\n \nChúc quí đọc giả có nhiều giây phút đọc sách thư giãn, bổ ích với *Sach Hay*."
                      "\n \n **Sach Hay Team**",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                  textAlign: TextAlign.justify,),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: send_email(context),
          )
        ],
      ),
    );
  }
}
Widget send_email(context){
  return Stack(
    children: [
      Container(
        height: 80,
        color: Colors.grey[850],
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){},
                    child: Text("Gửi email"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.only(left: 40, right: 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
                ),),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Phiên bản 1.3.3", style: TextStyle(
                  color: Colors.grey
                ),)
              ],
            )
          ],
        ),
      ),
    ],
  );
}
