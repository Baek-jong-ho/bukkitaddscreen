import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bukkitAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 버킷리스트 작성'),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
          // IconButton(icon: Cupertino
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          _buildProfileRow(),
          const SizedBox(height: 30),
          // TextField(
          //   decoration: InputDecoration(
          //     labelText: 'Input',
          //   ),
          // ),
          // _buildProfileButton(),
          const SizedBox(height: 10),
          _buildBukkitAddbutton(),

        ],
      ),
    );
  }
}
Widget _buildBukkitAddbutton(){
  return Column(
    children: [
      Row(
        children: [
          Container(
            child: IconButton(
              icon: const Icon(Icons.add_circle_outline),
              iconSize: 40,
              onPressed: () {},
              alignment: Alignment.centerLeft,
            ),
          ),



        ],
      ),
    ],
  );
}
//버킷 사진 입력버튼 위젯
Widget _buildProfileRow() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32.5),
                  child: Image.network(
                    'https://placeimg.com/200/100/people',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '버킷의 제목을 입력하시오',
                ),
              ),
            )),
          ),
        ],
      ),
    ],
  );
}

Widget _buildProfileButton() {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD4D5DD),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      height: 45,
      child: Center(
        child: Text(
          '포로필기 보기',
        ),
      ),
    ),
  );
}
