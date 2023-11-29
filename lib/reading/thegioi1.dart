import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/home/thoisu.dart';
import 'package:flutter/material.dart';

class TheGioi1 extends StatefulWidget {
  @override
  static const routeName = '/thegioi1';
  _TheGioi1State createState() => _TheGioi1State();
}

class _TheGioi1State extends State<TheGioi1> {
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
                      'Vòng 24 Giải ngoại hạng Anh (Premier League): Chờ màn ngược dòng của Liverpool.',
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
                    'assets/images/hinh4.jpg',
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
                    '0h30 ngày 18-2 (giờ VN), Liverpool sẽ gặp chủ nhà Newcastle ở vòng 24 Premier League. Đây là trận đấu mang tính sống còn với mục tiêu giành vé dự Champions League của Liverpool.',
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
                      'Cách đây khoảng 2 tuần, giới chuyên môn lẫn người hâm mộ chẳng ngại ngần đặt niềm tin cho Newcastle trong trận đấu này. '
                      'Nhưng sau chuỗi ngày thăng hoa mạnh mẽ, đại gia mới nổi Newcastle bắt đầu chững lại.Cụ thể, họ đã thắng 1, hòa 5 trong 6 vòng gần nhất. Chuỗi trận bất bại này thoạt nghe đầy ấn tượng, nhưng Newcastle thực chất chỉ giành được 8 điểm.Cũng trong chuỗi trận tương tự, Liverpool dù tụt đáy phong độ nhưng cũng giành được 7 điểm. '
                      'Điều quan trọng là Liverpool đang có dấu hiệu vượt qua khó khăn với sự trở lại của Van Dijk, Fabinho, Jota và Firmino.Mặt khác, tân binh Gakpo cũng ngày càng hòa nhập với đội. Do đó, chiến thắng 2-0 trước Everton cuối tuần rồi có thể là điểm khởi đầu cho màn hồi sinh của Liverpool.'
                      'Về điểm số, Liverpool hiện kém vị trí thứ tư của Newcastle 9 điểm nhưng đá ít hơn 1 trận. Nếu đánh bại Newcastle, Liverpool xem như đã bám sát top 4.Ở mùa giải 2020 - 2021, Liverpool từng bị top 4 bỏ xa với khoảng cách điểm số tương tự lúc này. '
                      'Nhưng rồi Liverpool bật dậy mạnh mẽ trong 10 vòng đấu cuối (thắng 8, hòa 2) để về đích ở vị trí thứ ba. Còn ở mùa giải năm nay, Liverpool vẫn còn đến 17 vòng đấu.Bản lĩnh là yếu tố quan trọng quyết định những cuộc đua như thế này. '
                      'Và Liverpool dù đang xếp hạng 9 trên bảng xếp hạng nhưng lại được các nhà cái xếp ngang hàng với Tottenham về tỉ lệ cược cho khả năng lọt vào top 4 (chỉ kém hơn Man City, Arsenal, M.U và Newcastle). ',
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
