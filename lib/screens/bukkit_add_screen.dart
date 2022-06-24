import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bukkitAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('나의 버킷리스트 작성'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app_outlined), onPressed: () {}),
          // IconButton(icon: Cupertino)
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 1),
          _buildProfileRow(),
          // TextField(
          //   decoration: InputDecoration(
          //     labelText: 'Input',
          //   ),
          // ),
          // _buildProfileButton(),
          const SizedBox(height: 1),
          _buildBukkitTextField(),
          const SizedBox(height: 1),
          buildBukiitAddButton(),
          const SizedBox(height: 1),
          SecretCheckToggleButton(),
        ],
      ),
    );
  }
}

// 서브 리스트 텍스트필드
Widget _buildBukkitTextField() {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 30),
            child: Container(
              // color: Colors.blue,
              child: Icon(Icons.circle_rounded, size: 11,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Container(
              // color: Colors.red,
              width: 340,
              height: 27,
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.deepPurpleAccent, width: 2.5),
                  ),
                ),
                cursorColor: Colors.deepPurpleAccent,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

// 서브리스트 추가생성 버튼
class buildBukiitAddButton extends StatefulWidget {
  const buildBukiitAddButton({Key? key}) : super(key: key);

  @override
  State<buildBukiitAddButton> createState() => _buildBukiitAddButtonState();
}

class _buildBukiitAddButtonState extends State<buildBukiitAddButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: IconButton(
              onPressed: () {
                Stack(
                );
                print('테스트');
              },
              icon: Icon(Icons.add_circle_outline),
              iconSize: 40,
              // 눌렀을 때 추가버튼 없어지고, 리스트 텍스트필드 생성 이벤트 처리
            ),
          ),
        ),
      ],
    );
  }
}

// Widget _buildBukiitAddButton() {
//   return Column(

//   );
// }

// 버킷 사진 입력버튼 위젯
Widget _buildProfileRow() {
  return Row(
    children: [
      Container(
        width: 100,
        height: 100,
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
      Column(
        children: [
          Container(
            width: 200,
            height: 20,
            child: Text(
              '버킷리스트 제목 입력',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Container(
            width: 200,
            height: 30,
            child: TextField(
              style: TextStyle(fontSize: 17),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.deepPurpleAccent, width: 2.5),
                ),
              ),
              cursorColor: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),
    ],
  );
}

class SecretCheckToggleButton extends StatefulWidget {
  const SecretCheckToggleButton({Key? key}) : super(key: key);

  @override
  State<SecretCheckToggleButton> createState() => _SecretCheckToggleButtonState();
}

class _SecretCheckToggleButtonState extends State<SecretCheckToggleButton> {
  List<bool> _selections1 = List.generate(2, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ToggleButtons(
            children: <Widget>[
              Icon(Icons.lock),
              Icon(Icons.lock_open),
              Text("WIFI"),
            ],
            onPressed: (int index) {
              setState(() {
                _selections1[index] = !_selections1[index];
              });
            },
            isSelected: _selections1,
          ),
        ),
      ],
    );
  }
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
      height: 10,
      child: Center(
        child: Text(
          '포로필 보기',
        ),
      ),
    ),
  );
}
