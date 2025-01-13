import 'package:flutter/material.dart';

// 버튼 만들어 보기
class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 10),
        _buildMessageButton(),
        _buildFollowButton(),
        const SizedBox(width: 10),
      ],
    );
  }

  InkWell _buildFollowButton() {
    return InkWell(
      // callBack 메서드 가 감지되었을 때,
      onTap: () {
        print('버튼 클릭되었슴미도 -- ! ');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          'Message',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
      ),
    );
  }

  InkWell _buildMessageButton() {
    // InkWell : 터치 이벤트 (탭, 더블 탭)를 감지하고 시각적 피드백도 제공합니다.
    // 터치 하고자하는 영역을 감싸서 만들 수 있다.
    return InkWell(
      // callBack 메서드 가 감지되었을 때,
      onTap: () {
        print('버튼 클릭되었슴미도 -- ! ');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          'Follow',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
      ),
    );
  }
}
