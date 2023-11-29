import 'package:baicuoiki/bottom/circle_button.dart';
import 'package:baicuoiki/home/home.dart';
import 'package:flutter/material.dart';

class Baidoc extends StatefulWidget {
  @override
  static const routeName = '/Baidoc';
  _BaidocState createState() => _BaidocState();
}

class _BaidocState extends State<Baidoc> {
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
                      'Móng Cái bỏ xét nghiệm COVID-19 người qua cửa khẩu sang Trung Quốc từ 8-1',
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
                    'assets/images/hinh1.jpg',
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
                    'Từ ngày 8-1, toàn bộ người và hàng hóa đi qua các cửa khẩu trên địa bàn TP Móng Cái, Quảng Ninh để sang TP Đông Hưng, Trung Quốc sẽ không phải xét nghiệm COVID-19 bằng phương pháp RT-PCR.',
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
                      'Ngày 3-1, UBND TP Móng Cái cho biết sẽ dừng việc xét nghiệm COVID-19 bằng phương pháp RT-PCR với người và hàng hóa xuất khẩu để "thích ứng" kịp thời với những thay đổi trong công tác phòng, chống dịch COVID-19 của Trung Quốc, giúp giảm chi phí và đảm bảo việc lưu thông hàng hóa được thuận tiện nhất.Trước đó, '
                          'ngày 31-12, TP Móng Cái cũng đã dừng yêu cầu làm việc, '
                          'tập trung ăn nghỉ khép kín tại các cửa khẩu, lối mở trên địa bàn đối với các lực lượng '
                          'liên ngành cửa khẩu, doanh nghiệp, công nhân và lái xe trung chuyển, lái đò, lái xe đường dài.'
                          'Tuy nhiên để đảm bảo an toàn, Móng Cái vẫn yêu cầu người ra vào phải duy trì việc đeo khẩu trang, '
                          'sát khuẩn tay, không tập trung đông người. Các lái xe trung chuyển vẫn phải mặc áo bảo hộ, '
                          'đeo khẩu trang, găng tay, bao giày, kính phòng chống dịch trong quá trình làm việc.Ngoài ra, '
                          'thành phố vẫn duy trì đội lái xe trung chuyển thông qua danh sách đã được phía Trung Quốc chấp thuận '
                          'và cấp mã vạch, cấp thẻ lái xe trung chuyển đủ điều kiện vào khu vực cửa khẩu làm việc.',
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
