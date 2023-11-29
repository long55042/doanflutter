import 'package:flutter/foundation.dart' show ChangeNotifier;

class News with ChangeNotifier{
  final String title;
  final String subtitle;
  final String content;
  final String category;
  final String time;
  final String author;
  final String seen;
  final String favorite;
  final String imageUrl;
  final String estimate;

  News({
    required this.author,
    required this.content,
    required this.category,
    required this.estimate,
    required this.favorite,
    required this.imageUrl,
    required this.seen,
    required this.subtitle,
    required this.time,
    required this.title,
  });
}

List<News> popularList = [
  News(
    author: "ban tin mới",
    estimate: "3",
    category: "thời sự",
    favorite: "700",
    seen: "4.5K",
    time: "4 hours ago",
    title:
    "Xe tang vật chất đống, phơi nắng mưa vì vướng quy định",
    imageUrl: "https://i1-vnexpress.vnecdn.net/2023/03/16/dji-0217-6561-1678960863-16789-6382-7755-1678980477.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=PQByLyrnYpAQptz5gB_f8w",
    subtitle:
    "Hàng nghìn xe máy, ba gác nằm ngổn ngang tại kho xe tang vật, vi phạm của công an quận Bình Tân. Ảnh: Đình Văn",
    content:
    "Các kho giữ xe tang vật quá tải tiềm ẩn nguy cơ cháy, nổ. Hồi tháng 6/2022, khoảng 300 xe máy, 4 ôtô bị thiêu rụi trong bãi giữ tang vật tại TP Thủ Đức",
  ),
  // News(
  //   author: "BBC News",
  //   estimate: "5",
  //   category: "Business",
  //   favorite: "502",
  //   seen: "1.2K",
  //   time: "10 hours ago",
  //   title:
  //   "Hertz: Car rental firm files for US bankruptcy protection - BBC News",
  //   image:
  //   "https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg",
  //   subtitle:
  //   "The company said the coronavirus pandemic had led to an \"abrupt\" decline in bookings.",
  //   content:
  //   "Car rental company Hertz has filed for bankruptcy protection in the US after the pandemic saw its business plummet.\n\nThe firm, which earns much of its income from car rentals at airports, said it had been affected by the sharp downturn in global travel.\n\nIt will continue to operate while restructuring its debts.\n\nHertz's international operations in Europe, Australia and New Zealand as well as its franchised locations in the US are not affected.\n\nThe company - which began operating a century ago in Chicago with a dozen Model T Ford cars - had already furloughed or laid off 20,000 employees, or around half of its global workforce, in response to the pandemic.\n\nIts chief executive resigned last week.\n\nBefore the pandemic the company had amassed billions of dollars in debt, with the rise of ride-hailing apps leading to a drop in demand for car rentals.\n\n.The impact of Covid-19 on travel demand was sudden and dramatic, causing an abrupt decline in the company's revenue and future bookings,Hertz said on Friday.\n\n.While it had taken immediate actions to prioritize the health and safety of employees and customers, eliminate all non-essential spending and preserve liquidity, the uncertainty over if and when the market would recover led to its decision, it said.",
  // ),
  // News(
  //   author: "Jon Fingas",
  //   estimate: "12",
  //   category: "Tech",
  //   favorite: "23K",
  //   seen: "40.5K",
  //   time: "12 Hours ago",
  //   title:
  //   "Apple's AirPods with wireless charging case drop to \$150 on Amazon",
  //   image:
  //   "https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=80&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-05%2F6caefb80-9c5d-11ea-afc4-ccfd5d320326&client=amp-blogside-v2&signature=69f050090db51ec49b41f34498ede628d5515e40",
  //   subtitle:
  //   "Now’s a prime opportunity to get some AirPods if you’d like them for your walks or just to improve your video calls",
  //   content:
  //   "Now’s a prime opportunity to get some AirPods if you’d like them for your walks or just to improve your video calls. Amazon is selling AirPods with a wireless charging case for \$150. That’s \$50 off the official price, and \$20 lower than the usual discounts. You can also score the standard AirPods for \$130 if you’re content to charge with a cable.As has been true ever since launch, the AirPods’ chief allure is convenience. They’re easy to set up on an iOS device, switch seamlessly between multiple Apple devices and have conveniences like always-available “Hey Siri” and automatic pausing when you remove a bud. The wireless case makes it that much easier to top up at the end of a long day.\n\nThe same caveats still apply. While you technically can use AirPods with Android and Windows devices, they clearly work best within Apple’s ecosystem. The buds’ five-hour claimed battery life is strictly acceptable (you’ll be thankful for that battery case). And if the EarPods that came with your iPhone don’t fit you well, the AirPods won’t either. You’ll want to look at alternatives like the AirPods Pro if you want something better-suited to workouts. Still, there are some reasons why AirPods are popular — they take many of the hassles out of Bluetooth earbuds.",
  // ),
  // News(
  //   author: "Kirsten Korosec",
  //   estimate: "8",
  //   category: "Tech",
  //   favorite: "12K",
  //   seen: "30K",
  //   time: "22 Hours ago",
  //   title: "'Fallout Shelter' joins Tesla arcade in latest software update",
  //   image:
  //   "https://s.yimg.com/ny/api/res/1.2/pKmaOpgHoAWgn509JCXb0w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyODA7aD02NTcuMDY2NjY2NjY2NjY2Nw--/https://s.yimg.com/uu/api/res/1.2/bRF7yeTUSIQxChtFBSrRvQ--~B/aD0xNDc0O3c9Mjg3MjtzbT0xO2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/techcrunch_350/d82305b4f99384a4352709b662690cf9",
  //   subtitle:
  //   "J.K. Rowling has been drinking a lot and you'd better believe she has some thoughts on Bitcoin.\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin",
  //   content:
  //   'J.K. Rowling has been drinking a lot and you`d better believe she has some thoughts on Bitcoin.\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin.\n\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin. And so, like any celebrity who wants to start her day off with a ray of positivity, she hopped on Twitter to engage.\n\nOver the course of the next several hours, as legions of crypto try-hards leapt at the opportunity to explain consensus algorithms, Rowling`s nascent views on Bitcoin turned from mildly inquisitive to a friendly mocking.\n\nPerhaps it was the fourth Old Fashioned speaking?\n\n"People are now explaining Bitcoin to me, and honestly, it`s blah blah blah collectibles (My Little Pony?) blah blah blah computers (got one of those) blah blah blah crypto (sounds creepy) blah blah blah understand the risk (I don`t, though.)," she tweeted. "I know you mean to help, but full disclosure: I’m only allowing myself alcohol at weekends during this lockdown and I`m on my fourth very strong Old Fashioned and honestly, you might as well send me a scroll written in Sanskrit."',
  // ),
  // News(
  //   author: "Darrell Etherington",
  //   estimate: "6",
  //   category: "Tech",
  //   favorite: "21K",
  //   seen: "40.2K",
  //   time: "8 Hours ago",
  //   title:
  //   "New non-profit from Google Maps co-creator offers temporary ‘safe’ passes to aid COVID-19 reopening effort",
  //   image:
  //   "https://techcrunch.com/wp-content/uploads/2020/05/GettyImages-1152349954.jpg?w=552",
  //   subtitle:
  //   "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues.",
  //   content:
  //   "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues. One such tech solution launching today comes from Brian McClendon,  co-founder of Keyhole,  the company that Google  purchased in 2004 that would form the basis of Google Earth and Google Maps. McClendon’s new CVKey Project is a registered nonprofit that is launching with an app for symptom self-assessment that generates a temporary QR code, which will work with participating community facilities as a kind of health “pass” on an opt-in basis.\n\nUltimately, CVKey Project hopes to launch an entire suite of apps dedicated to making it easier to reopen public spaces safely.  Apple and Google recently launched an exposure notification API that would allow CVKey to include those notifications in its apps. CVKey also plans to provide information about facilities open under current government guidelines and their policies to prevent the spread of COVID-19 as much as possible.\n\nThe core element of CVKey Project’s approach, however, is the use of a QR code generated by its app that essentially acts as a verification that you’re “safe” to enter one of these shared spaces. The system is designed with user privacy in mind, according to McClendon. Any identity or health data exists only on a user’s individual device — no date is ever uploaded to a cloud server or shared without a user’s consent. Information is also provided about what that sharing entails. Users voluntarily offer their health info, and the app never asks for location information. Most of what it does can be done without an internet connection at all, McClendon explains.\n\nWhen you generate and scan a QR code at a participating location, a simple binary display (based on the location’s policies) indicates whether you’re cleared to pass. The location won’t see any specifics about your health information. The code simply transmits the particulars of shown symptoms (which ones and how recently, for instance), and then that is matched against the  public space’s policy. The app then provides a “go”/”no-go” response.\n\nMcClendon created CVKey Project with former Google Earth, Google Maps and Uber  co-workers Manik Gupt and Waleed Kadous, as well as Dr. Marci Nielsen, a public health specialist with a long history of public and private institution leadership.\n\nThe apps created by CVKey Project will be available soon, and the nonprofit is looking for potential partners to participate in its program. Like just about everything else designed to address the COVID-19 crisis, it’s not a simple fix, but it could form part of a larger strategy that provides a path forward for dealing with the pandemic.",
  // ),
];

List<News> trendingList = [
  News(
    author: "tin nổi bật",
    estimate: "3",
    category: "Tin nổi bật",
    favorite: "700",
    seen: "4.51K",
    time: "4 hours ago",
    title:
    "Ten Hag: 'Man Utd chơi tốt hơn khi Fulham còn chín người'",
    imageUrl:
    "https://i1-thethao.vnecdn.net/2023/03/20/New-Project-50-2427-1679279821.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=VdshPqUr1-FqURDI80MYwg",
    subtitle:
    "Sabitzer mừng bàn thứ hai của Man Utd trong trận thắng Fulham tối 19/3.",
    content:
    "Bước ngoặt đến ở phút 72. Do dùng tay cản bóng trong vòng cấm, cầu thủ chạy cánh Willian phải nhận thẻ đỏ trực tiếp. Do phản đối trọng tài, tiền đạo Aleksandar Mitrovic và HLV Marco Silva cũng phải nhận thẻ đỏ. Sau khi Bruno Fernandes gỡ hòa từ chấm 11m, Man Utd tận dụng tốt lợi thế hơn hai cầu thủ để ghi hai bàn nhờ công Marcel Sabitzer phút 77 và Bruno Fernandes phút 90+6.Ten Hag không bình luận về diễn biến khiến Fulham mất ba thành viên. Ông chỉ khen pha thoát xuống của Antony và cú rê bóng qua thủ môn của Jadon Sancho. Mọi người đều thấy đó rõ ràng là tình huống dùng tay chơi bóng, Ten Hag nói. Tôi không bình luận về những gì diễn ra sau đó. Tôi không đưa ra nhận xét về đối thủ. Tuy nhiên, sau khi họ còn chín cầu thủ trên sân, chúng tôi đã chơi tốt hơn.HLV người Hà Lan cũng cho rằng mỗi cầu thủ là một miếng ghép đem lại chiến thắng. Trong đó, ông đặc biệt ấn tượng với khả năng cản phá của De Gea, những pha chuyển trạng thái tấn công của Antony, Sancho và khả năng dẫn dắt trận đấu của Fernandes. Là một tập thể, chúng tôi đã thể hiện rất tốt, Ten Hag khẳng định.",
  ),
];

List<News> recentList = [
  News(
    author: "bản tin",
    estimate: "3",
    category: "Du lịch",
    favorite: "700",
    seen: "41.51K",
    time: "4 hours ago",
    title:
    "Vẻ đẹp đồi Tức Dụp tháng ba",
    imageUrl: "https://i1-dulich.vnecdn.net/2023/03/19/image003-5749-1679215393.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=8txb2BcKpVPu-AGVjOSekg",
    subtitle:
    "Nhìn từ trên cao, đồi Tức Dụp có địa hình trùng điệp với nhiều núi đá thẳng đứng, phủ xanh bởi mảng thực vật đa dạng.",
    content:
    "Du khách có thể dừng chân ở các điểm di tích chiến tranh được phục dựng, đảm bảo gìn giữ toàn vẹn các giá trị văn hóa - lịch sử, để tìm hiểu và hòa mình vào khoảnh khắc lịch sử hào hùng. Những câu chuyện kể, hình ảnh trực quan và thiết bị vũ trang đều được trưng bày trong Nhà Truyền thống và Phòng Sa bàn. Sau đó có thể di chuyển đến Đền Tưởng niệm để dâng hương tưởng nhớ các anh hùng liệt sĩ đã hy sinh trong các trận chiến khi xưa.Tức Dụp của hiện tại không còn là điểm nóng kháng chiến mà trở thành điểm tham quan nổi tiếng nằm trong Khu du lịch Đồi Tức Dụp được nhiều du khách yêu thích. Khu di tích lịch sử cấp quốc gia này được xây dựng, trùng tu để khai thác dịch vụ giải trí và thể thao quốc phòng. Ngoài ra đây còn thường là nơi diễn ra các buổi tập bắn bia bằng đạn thật, tour tham quan vườn thú, đạp xe cầu gỗ, đua thuyền trên hồ... với các vườn hoa tiểu cảnh.",
  ),
  News(
    author: "Jon Fingas",
    estimate: "12",
    category: "Phim",
    favorite: "213K",
    seen: "41.51K",
    time: "12 Hours ago",
    title:
    "Tom Hank bị trao Mâm Xôi Vàng",
    imageUrl:
    "https://i1-giaitri.vnecdn.net/2023/03/12/Tom-Hanks-9776-1653731533-1847-1678558935.png?w=680&h=0&q=100&dpr=1&fit=crop&s=-5RnyjddU9KxPynWjmX7sw",
    subtitle:
    "Tom Hanks vào vai quản lý Tom Parker trong Elvis.",
    content:
    "Màn thể hiện của Hanks bị chê ở khâu tạo hình và giọng nói. Hollywood Reporter viết: Nhân vật có đôi mắt kỳ quái, đáng sợ ẩn dưới bộ đồ bằng cao su để hóa trang nhân vật cho béo hơn, cùng với giọng nói khó chịu, khó hiểu dù êkíp giải thích ông ta đến từ Hà Lan.Theo NY Post, Tom Hanks cho biết từng hối hận ngay sau khi nhận vai. Tài tử không hứng thú với những nhân vật phản diện. Tuy nhiên, ông bị đạo diễn Baz Luhrmann thuyết phục khi mô tả Tom Parker giống một ông bầu tài giỏi, người đóng vai trò quan trọng thúc đẩy tên tuổi Elvis Presley lên tầm huyền thoại.Elvis là bộ phim khám phá những khía cạnh trong cuộc đời cũng như âm nhạc của ông hoàng Rock&Roll Elvis Presley thông qua mối quan hệ phức tạp với người quản lý Tom Parker. Phim được kể từ góc nhìn của Parker, đào sâu vào sự liên kết giữa hai người suốt 20 năm, từ lúc Presley tay trắng cho đến khi thành công.",
  ),
  // News(
  //   author: "Kirsten Korosec",
  //   estimate: "8",
  //   category: "Tech",
  //   favorite: "12K",
  //   seen: "31.1K",
  //   time: "22 Hours ago",
  //   title: "'Fallout Shelter' joins Tesla arcade in latest software update",
  //   image: "https://cdn.arstechnica.net/wp-content/uploads/2020/05/hearing-ios-1-760x380.jpg",
  //   subtitle:
  //   "J.K. Rowling has been drinking a lot and you'd better believe she has some thoughts on Bitcoin.\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin",
  //   content:
  //   'J.K. Rowling has been drinking a lot and you`d better believe she has some thoughts on Bitcoin.\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin.\n\nNoted TERF and author of The Cuckoo’s Calling, Rowling decided Friday was the perfect time to learn about the cryptocurrency Bitcoin. And so, like any celebrity who wants to start her day off with a ray of positivity, she hopped on Twitter to engage.\n\nOver the course of the next several hours, as legions of crypto try-hards leapt at the opportunity to explain consensus algorithms, Rowling`s nascent views on Bitcoin turned from mildly inquisitive to a friendly mocking.\n\nPerhaps it was the fourth Old Fashioned speaking?\n\n"People are now explaining Bitcoin to me, and honestly, it`s blah blah blah collectibles (My Little Pony?) blah blah blah computers (got one of those) blah blah blah crypto (sounds creepy) blah blah blah understand the risk (I don`t, though.)," she tweeted. "I know you mean to help, but full disclosure: I’m only allowing myself alcohol at weekends during this lockdown and I`m on my fourth very strong Old Fashioned and honestly, you might as well send me a scroll written in Sanskrit."',
  // ),
  // News(
  //   author: "Darrell Etherington",
  //   estimate: "6",
  //   category: "Tech",
  //   favorite: "21K",
  //   seen: "42.5K",
  //   time: "8 Hours ago",
  //   title:
  //   "New non-profit from Google Maps co-creator offers temporary ‘safe’ passes to aid COVID-19 reopening effort",
  //   image: "https://images.wsj.net/im-190173",
  //   subtitle:
  //   "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues.",
  //   content:
  //   "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues. One such tech solution launching today comes from Brian McClendon,  co-founder of Keyhole,  the company that Google  purchased in 2004 that would form the basis of Google Earth and Google Maps. McClendon’s new CVKey Project is a registered nonprofit that is launching with an app for symptom self-assessment that generates a temporary QR code, which will work with participating community facilities as a kind of health “pass” on an opt-in basis.\n\nUltimately, CVKey Project hopes to launch an entire suite of apps dedicated to making it easier to reopen public spaces safely.  Apple and Google recently launched an exposure notification API that would allow CVKey to include those notifications in its apps. CVKey also plans to provide information about facilities open under current government guidelines and their policies to prevent the spread of COVID-19 as much as possible.\n\nThe core element of CVKey Project’s approach, however, is the use of a QR code generated by its app that essentially acts as a verification that you’re “safe” to enter one of these shared spaces. The system is designed with user privacy in mind, according to McClendon. Any identity or health data exists only on a user’s individual device — no date is ever uploaded to a cloud server or shared without a user’s consent. Information is also provided about what that sharing entails. Users voluntarily offer their health info, and the app never asks for location information. Most of what it does can be done without an internet connection at all, McClendon explains.\n\nWhen you generate and scan a QR code at a participating location, a simple binary display (based on the location’s policies) indicates whether you’re cleared to pass. The location won’t see any specifics about your health information. The code simply transmits the particulars of shown symptoms (which ones and how recently, for instance), and then that is matched against the  public space’s policy. The app then provides a “go”/”no-go” response.\n\nMcClendon created CVKey Project with former Google Earth, Google Maps and Uber  co-workers Manik Gupt and Waleed Kadous, as well as Dr. Marci Nielsen, a public health specialist with a long history of public and private institution leadership.\n\nThe apps created by CVKey Project will be available soon, and the nonprofit is looking for potential partners to participate in its program. Like just about everything else designed to address the COVID-19 crisis, it’s not a simple fix, but it could form part of a larger strategy that provides a path forward for dealing with the pandemic.",
  // ),
];
List<News> homeList = [
News(
author: "thanh niên",
estimate: "3",
category: "thời sự",
favorite: "500",
seen: "35.51K",
time: "5 hours ago",
title:
"Vẻ đẹp đồi Tức Dụp tháng ba",
imageUrl: "https://i1-vnexpress.vnecdn.net/2023/03/20/phat-hien-bom-3468-1679320609.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Ak8Z738Tlw1_gZbI9tf5IA",
subtitle:
"Vị trí một quả bom (vòng tròn đỏ) lúc mới phát hiện.",
content:
"Thuê máy san ủi vườn, đào móng để chuẩn bị làm nhà, một hộ dân ở xã Nghĩa Hợp, huyện Tân Kỳ phát hiện 3 quả bom nằm cách nhau khoảng 20 m. Ngày 20/3, bộ đội công binh (Bộ chỉ huy quân sự Nghệ An), lực lượng quân sự huyện cùng dân quân địa phương đào ba quả bom và vận chuyển ra bãi đất trống.Những quả bom này cắm sâu vào lòng đất từ 1,5 đến 2m, cách nhà dân khoảng 50 m. Mỗi quả dài 1- 1,2 m, đường kính 25 cm. Các ký hiệu trên thân đã bị mờ, vỏ hoen gỉ, song ngòi nổ của bom vẫn còn.Dự kiến ngày mai, bộ đội sẽ dùng xe chuyên dụng chuyển số bom này tới bãi tiêu hủy trên địa bàn huyện Tân Kỳ để kích nổ.Lãnh đạo xã Nghĩa Hợp cho biết, khu vực phát hiện bom nằm gần phà bắc qua sông Con nối xã Nghĩa Hợp với Nghĩa Đồng - nơi từng bị máy bay Mỹ dội bom mấy chục năm trước.Năm 2019, người dân ở xã Nghĩa Hợp từng phát hiện 4 quả bom còn nguyên kíp nổ khi đang đào đất.",
 ),
];