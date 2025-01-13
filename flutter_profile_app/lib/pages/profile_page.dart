import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/profile_tab.dart';
import '../components/profile_buttons.dart';
import '../components/profile_count_info.dart';
import '../components/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blueAccent,
          ),
          centerTitle: true,
          title: Text('Profile'),
        ),
        endDrawer: Container(
          width: double.infinity,
          // double.infinity <-- 가능한 최대로 확장 하라
          // height: double.infinity, // dart에서는 전부 다 객체
          color: Colors.white,
          child: Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_rounded,
                color: Colors.blueAccent,
              ),
              centerTitle: true,
              title: Text('Setting'),
            ),
            body: Container(),
          ),
        ),
        body: Column(
          children: [
            // 공백 20
            const SizedBox(height: 20), // SizeBox 특정한 영역 만들어 주는 거
            // 프로필 헤더
            ProfileHeader(),
            // 공백 20
            const SizedBox(height: 20),
            // 프로필 카운트 정보
            ProfileCountInfo(),
            // 공백 20
            const SizedBox(height: 20),
            // 프로필 버튼 2개
            ProfileButtons(),
            // TabBar 영역
            Expanded(
              child: ProfileTab(),
            ),
          ],
        ),
      ),
    );
  }
}
