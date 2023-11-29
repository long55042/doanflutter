import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/home/home.dart';
import 'package:flutter/material.dart';

class Baidoc2 extends StatefulWidget {
  @override
  static const routeName = '/Baidoc2';
  _Baidoc2State createState() => _Baidoc2State();
}

class _Baidoc2State extends State<Baidoc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 0),
              child: Row(
                children: [
                  CircleButton(
                    icon: Icons.arrow_back_ios,
                    onTap: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  CircleButton(
                    icon: Icons.share,
                    onTap: () {},
                  ),
                  CircleButton(
                    icon: Icons.favorite_border,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(
            //   height: 15,
            // ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                      'Chiến lược truyền thống của Trung Quốc là lấn dần đất của láng giềng',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/hinh3.jpg',
                    width: 500,
                    height: 250,
                    fit: BoxFit.fitWidth,
                    // height: 200,
                    // width: 2000,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    ' Tờ báo Gazeta của Nga mới đây đã có bài báo luận giải về việc Trung Quốc tiến hành xây dựng đảo nhân tạo trong khu vực đảo Trường Sa.',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                      '‘ Truyền thông quốc tế đều đưa tin tàu Trung Quốc phun vòi rồng vào tàu Việt Nam. '
                      'Ảnh: Dân ViệtTrang báo mạng Inquirer của Phillippines có bài viết với tiêu đề: Việt Nam và Nhật Bản phản đối Trung Quốc. '
                      'Bài báo có viết, trong khi Việt Nam đã kêu gọi sự giúp đỡ từ phía Liên Hợp Quốc để yêu cầu Trung Quốc tháo dỡ giàn khoan khỏi lãnh hải Việt Nam, Nhật Bản đã cho triệu hồi Đại sứ tại Trung Quốc vào ngày 12/6 để phản đối việc các máy bay chiến đấu Trung Quốc này bay gần “một cách nguy hiểm” các máy bay quân sự Nhật ở Hoa Đông.'
                      'Việt Nam đã phản đối Trung Quốc tại trụ sở Liên Hợp Quốc tại New York, yêu cầu Trung Quốc tháo dỡ giàn khoan và dừng lại các hoạt động ảnh hưởng đến an toàn trên biển tại Biển Đông, '
                      'cách 370km trong vùng đặc quyền kinh tế của Việt Nam theo Công ước về Luật biển của Liên Hợp Quốc.Theo bài báo, '
                      'rong ngày hôm qua, Nhật Bản cũng yêu cầu Đại sứ Trung Quốc để kiến nghị về việc các máy bay chiến đấu Trung Quốc bay gần khu vực hai máy bay quân đội của Nhật Bản một cách “nguy hiểm”.'
                      'Bài báo cũng trích lời ông Yoshihide Suga, Người phát ngôn Chính phủ Nhật về sự việc này: “Đó là một hành động cực kỳ đáng hối tiếc và không thể được khoan dung”.',
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
