import 'package:flutter/material.dart';

// 프로필 카운트 인포 위젯 만들어보기
class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // 메인 주축 방향 정렬
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        _buildInfo('50', 'Posts'),
        Spacer(),
        _buildLine(), // 파란색 실선
        Spacer(),
        _buildInfo('10', 'Likes'),
        Spacer(),
        _buildLine(), // 파란색 실선
        Spacer(),
        _buildInfo('3', 'Share'),
        Spacer(),
      ],
    );
  }

  // BlueLine
  Container _buildLine() {
    return Container(
      width: 2,
      height: 60,
      color: Colors.blueGrey,
    );
  }

  // 리턴타입은
  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(count,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
        const SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
