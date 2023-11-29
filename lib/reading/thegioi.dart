import 'package:baicuoiki/bottom/circle_button.dart';

import 'package:flutter/material.dart';

class TheGioi extends StatefulWidget {
  const TheGioi({super.key});

  @override
  _TheGioiState createState() => _TheGioiState();
}

class _TheGioiState extends State<TheGioi> {
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
                      'Vin Diesel tiết lộ trailer đầu tiên của "Fast X" trước khi phát hành toàn cầu',
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
                    'assets/images/nen.jpg',
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
                    'VTV.vn - Vin Diesel đã đến bữa tiệc "Fast X" tại LA Live hôm thứ Năm (giờ Mỹ) cùng gia đình. '
                    '"Fast X" sẽ phát hành ngày 19/5 tới.',
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
                      'Những ngôi sao nổi tiếng của "Fast & Furious" như Michelle Rodriguez, '
                      'Tyrese Gibson và Ludacris đã có mặt để giới thiệu đoạn trailer dài bốn phút lần đầu tiên. '
                      '"Fast X", phát hành ngày 19 tháng 5, sẽ là bộ phim thứ mười trong loạt phim đã kiếm được 5 tỷ USD doanh thu phòng vé trên toàn thế giới.Diesel nói tại sự kiện: "Các bạn, tôi không thể nói cho các bạn biết cảm giác tuyệt vời như thế nào sau 23 năm được ở đây tối nay để ra mắt trailer".'
                      'Đoạn giới thiệu của "Fast X" sẽ được phát hành trực tuyến một ngày sau đó, thứ Sáu (giờ Mỹ), lúc 11 giờ sáng.Xuất hiện tại sự kiện trong ngày thứ Năm, Diesel mặc áo phông tưởng niệm bạn diễn quá cố Paul Walker, người qua đời vào năm 2019. '
                      'Các thành viên trong gia đình Walker cũng có mặt trong số khán giả xem đoạn giới thiệu của "Fast X".Diesel nói với khán giả: "Tôi thật may mắn khi được là một phần của gia đình này... '
                      'Ý tôi là điều này từ trong tâm hồn tôi, những người hâm mộ tuyệt vời nhất mà bất kỳ bộ phim nào cũng có thể mơ tới. Bạn đã cho phép chúng tôi trở thành gia đình của bạn. Tôi rất nóng lòng muốn bạn xem bộ phim này".',
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
