import 'package:flutter/material.dart';
import 'package:shopping_cart_app/constants.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      // TODO : 다시 Column으로 바꾸기
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ListView가 자식 위젯들의 높이에 맞게 축소
          children: [
            const SizedBox(height: 10),
            _buildBodyNameAndPrice('Urban Soft AL 10.0', 699),
            _buildBodyRatingAndReviewCount(3, 26),
            const SizedBox(height: 15),
            _buildBodyColorOptions(),
            const SizedBox(height: 30),
            _buildBodyButton()
          ],
        ),
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice(String name, int price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )),
        Text('\$ ${price.toString()}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      ],
    );
  }

  // 2. 별점과 리뷰
  Widget _buildBodyRatingAndReviewCount(int count, int ReviewCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStartByCount(count),
        Row(children: [
          Text(
            'review ',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            '\(${ReviewCount}\)',
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ])
      ],
    );
  }

// 2-1. 별 만들기 함수
  Widget _buildStartByCount(int count) {
    const int maxStars = 5; // 최대 별 개수

    return Row(
      children: List.generate(
        maxStars,
        (index) => Icon(
          index < count ? Icons.star : Icons.star, // 조건에 따라 별 아이콘 변경
          color: index < count ? Colors.amber : Colors.grey, // 노란색 또는 회색
          size: 22,
        ),
      ),
    );
  }

// 3. 색상 옵션
  Widget _buildBodyColorOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color Options',
          style: TextStyle(fontSize: 15, color: Colors.brown),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildColorOption(Colors.black),
              _buildColorOption(Colors.green),
              _buildColorOption(Colors.orangeAccent),
              _buildColorOption(Colors.grey),
              _buildColorOption(Colors.white),
            ],
          ),
        )
      ],
    );
  }

// 4. 색상 옵션 위젯을 만드는 함수
  Widget _buildColorOption(Color color) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: Colors.black)),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: Colors.black),
                color: color),
          ),
          // Positioned 위젯 활용
        ],
      ),
    );
  }

// 5. 버튼 만들기
  Widget _buildBodyButton() {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          'Add to Cart',
          style: TextStyle(color: Colors.white),
        ));
  }
// end of body
}
