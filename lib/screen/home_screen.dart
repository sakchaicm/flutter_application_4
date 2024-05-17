import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example 4"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/code-camp1.jpeg'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Text("Code Campe #1",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("พัฒนาศักยภาพบุคลากรด้านซอฟต์แวร์ ครั้งที่ ๑",
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.star), Text("41")]),
                  ]),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: const Text("ไป login")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Icon(Icons.call, color: Colors.purple[300]),
                      Text("Call",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400))
                    ]),
                    Column(children: [
                      Icon(Icons.route, color: Colors.purple[300]),
                      Text("Route",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400))
                    ]),
                    Column(children: [
                      Icon(Icons.share, color: Colors.purple[300]),
                      Text("Share",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400))
                    ])
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                " ระหว่างวันที่ ๑๖ - ๑๗ พฤษภาคม ๒๕๖๗ งานพัฒนาระบบสารสนเทศ สำนักวิทยบริการและเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีราชมงคลล้านนา (สวส.มทร.ล้านนา) จัดโครงการพัฒนาศักยภาพด้านการพัฒนาซอฟต์แวร์ ครั้งที่ ๑ (RMUTL Code Camp #1) มีคุณบัณฑิต นันทะเทศ นักพัฒนาซอฟต์แวร์ Full-Stack Developer ผู้เชี่ยวชาญด้านงานพัฒนาระบบเว็บแอปพลิเคชัน และด้านงานพัฒนามือถือแอปพลิเคชัน เป็นวิทยากร มีอาจารย์ณัฐชาสิทธิ์ ชูเกียรติขจร รองผู้อำนวยการ สวส.มทร.ล้านนา กล่าวรายงาน ได้รับเกียติจากรองศาสตราจารย์ ดร.ธีระศักดิ์ อุรัจนานนท์ รองอธิการบดีฝ่ายวิชาการ และกิจการนักศึกษา มทร.ล้านนา เป็นประธานและกล่าวเปิดงาน กลุ่มเป้าหมายที่เข้าร่วมการอบรมฯ คือ อาจารย์ และบุคลากร จาก มทร.ล้านนา ๖ พื้นที่ ณ เรือนราชารีสอร์ท อำเภอแม่ริม จังหวัดเชียงใหม่ ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
