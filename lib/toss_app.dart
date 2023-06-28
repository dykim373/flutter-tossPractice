import 'package:flutter/material.dart';
import 'package:toss_practice/custom_widget/account.dart';
import 'package:toss_practice/custom_widget/bottom_information.dart';
import 'package:toss_practice/custom_widget/toss_box.dart';

class TossApp extends StatefulWidget {
  const TossApp({super.key});

  @override
  State<TossApp> createState() => _TossAppState();
}

class _TossAppState extends State<TossApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F6),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(
                0,
                0,
                0,
                MediaQuery.of(context).size.height * 0.15,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFE7F2FF),
                    Color(0xFFF2F3F6),
                  ],
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'QR 체크인',
                          style: TextStyle(
                            color: Color(0xFFA6B0BC),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        const Icon(
                          Icons.message,
                          color: Color(0xFFA6B0BC),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        const Icon(
                          Icons.add_alert_sharp,
                          color: Color(0xFFA6B0BC),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                    TossBox(
                      topMargin: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.spatial_audio_rounded,
                            size: 40,
                            color: Colors.grey[800],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '안녕하세요, 도연님!',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                '기획자의 Flutter 입니다.',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    TossBox(
                      topPadding: 30,
                      topMargin: 20,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 23,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Account(
                            icon: Icon(
                              Icons.ac_unit_sharp,
                              size: 40,
                            ),
                            name: '하나은행',
                            money: '1,000,000,000원',
                          ),
                          const Account(
                            icon: Icon(
                              Icons.account_balance_sharp,
                              size: 40,
                            ),
                            name: '토스머니',
                            money: '1,000,000원',
                          ),
                          const Account(
                            icon: Icon(
                              Icons.adb_outlined,
                              size: 40,
                            ),
                            name: '활천',
                            money: '2,000,000원',
                          ),
                          const Account(
                            icon: Icon(
                              Icons.add_to_home_screen_sharp,
                              size: 40,
                            ),
                            name: '저축',
                            money: '66,000,000원',
                          ),
                        ],
                      ),
                    ),
                    TossBox(
                      topPadding: 30,
                      topMargin: 20,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '소비',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 23,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Account(
                            icon: Icon(
                              Icons.account_balance_sharp,
                              size: 40,
                            ),
                            name: '토스머니',
                            money: '1,000,000원',
                          ),
                          const Account(
                            icon: Icon(
                              Icons.adb_outlined,
                              size: 40,
                            ),
                            name: '활천',
                            money: '2,000,000원',
                          ),
                        ],
                      ),
                    ),
                    //수평 ListView
                    SizedBox(
                      height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.025,
                          ),
                          const TossBox(
                            widthRatio: 0.55,
                            topMargin: 20,
                            bottomMargin: 20,
                            child: BottomInformation(
                              subTitle: '숨어있는',
                              title: '정부지원금\n찾기',
                              icon: Icons.house_rounded,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.025,
                          ),
                          const TossBox(
                            widthRatio: 0.55,
                            topMargin: 20,
                            bottomMargin: 20,
                            child: BottomInformation(
                              subTitle: '최근',
                              title: '비상금\n모으기',
                              icon: Icons.plagiarism_rounded,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.025,
                          ),
                          const TossBox(
                            widthRatio: 0.55,
                            topMargin: 20,
                            bottomMargin: 20,
                            child: BottomInformation(
                              subTitle: '자주',
                              title: '신용정보\n보기',
                              icon: Icons.monetization_on,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.025,
                          ),
                          const TossBox(
                            widthRatio: 0.55,
                            topMargin: 20,
                            bottomMargin: 20,
                            child: BottomInformation(
                              subTitle: '인기',
                              title: '더보기\n',
                              icon: Icons.playlist_add_outlined,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.025,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Navigation Bar
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 7),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: const Center(
                  child: Text('Bottom Navigation Bar'),
                ),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'hi'),
      //     BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'mmm'),
      //   ],
      // ),
    );
  }
}
