
import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/home/xemnhieu.dart';
import 'package:flutter/material.dart';

class Baidoc1 extends StatefulWidget {
  @override
  static const routeName = '/Baidoc1';
  _Baidoc1State createState() => _Baidoc1State();
}

class _Baidoc1State extends State<Baidoc1> {
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
                      'WHO kêu gọi các nước hành động ngay để giải quyết bệnh COVID kéo dài',
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
                    'assets/images/hinh2.jpg',
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
                    'TTO - Trong bài viết cho báo The Guardian đăng ngày 12-10, tổng giám đốc WHO kêu gọi hành động ngay lập tức để giải quyết tình trạng nhiễm COVID kéo dài đang gây "đau khổ kéo dài" cho hàng chục triệu người.',
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
                      'Tổng giám đốc Tổ chức Y tế thế giới (WHO) - ông Tedros Adhanom Ghebreyesus - gọi COVID kéo dài là một cuộc khủng hoảng rất nghiêm trọng vì nó tàn phá cuộc sống và sinh kế của nhiều người, tác động đến hệ thống y tế cũng như nền kinh tế các nước.Ông Tedros cho biết thế giới chưa bao giờ ở vị thế tốt hơn lúc này để kết thúc đại dịch COVID-19, nhưng còn có một tồn tại rõ ràng khác là nhiều người bị nhiễm COVID-19 bị các triệu chứng kéo dài.Từ lần đầu được ghi nhận năm 2019 ở Trung Quốc, '
                          'COVID-19 đã khiến gần 6,5 triệu người trên thế giới tử vong với hơn 600 triệu người nhiễm. '
                          'WHO ước tính có 10 - 20% người nhiễm bị các triệu chứng kéo dài như mệt mỏi, khó thở, sương mù não '
                          '(rối loạn chức năng nhận thức), đặc biệt ở phụ nữ.Cho đến nay, các nhà khoa học vẫn chưa biết cách điều trị tốt nhất với tình trạng COVID kéo dài. Các bệnh nhân cho biết nó khiến cuộc sống của họ bị đảo lộn. Các triệu chứng kéo dài ảnh hưởng đến chất lượng sống và việc không được điều trị làm kéo dài các triệu chứng của bệnh nhân."Trong khi đại dịch đã thay đổi đáng kể nhờ sự ra đời của nhiều công cụ cứu sinh, tác động của COVID kéo dài với tất cả các quốc gia rất nghiêm trọng, '
                          'cần phải có hành động ngay lập tức và lâu dài tương ứng với quy mô của nó", ông Tedros viết.Theo ông, các nước phải "nghiêm túc đẩy mạnh" nghiên cứu về COVID kéo dài và khả năng tiếp cận dịch vụ y tế của người bị bệnh này nếu muốn "giảm thiểu sự đau khổ" cho người dân và bảo vệ hệ thống y tế và lực lượng lao động."Ở giai đoạn đầu của đại dịch, các hệ thống y tế phải ưu tiên tập trung toàn bộ nỗ lực để cứu sống bệnh nhân COVID-19 cấp tính. Tuy nhiên, giờ đây, điều quan trọng là các chính phủ phải đầu tư lâu dài vào hệ thống y tế và nhân lực y tế '
                          'và lập kế hoạch ngay từ bây giờ để đối phó với COVID kéo dài", ông viết.',
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
