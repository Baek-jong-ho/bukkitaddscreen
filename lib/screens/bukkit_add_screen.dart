import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bukkitAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
          _buildProfileRow(),
          // const SizedBox(height: 1),
          // _buildBukkitTextField(),
          // const SizedBox(height: 1),
          // buildBukiitAddButton(),
          const SizedBox(height: 8),
          ColumnInColumnTest(),
          const SizedBox(height: 8),
          SecretCheckToggleButton(),
        ],
      ),
    );
  }
}

// 서브 리스트 작성 부분(추가 버튼 포함)
class ColumnInColumnTest extends StatefulWidget {
  const ColumnInColumnTest({Key? key}) : super(key: key);

  @override
  State<ColumnInColumnTest> createState() => _ColumnInColumnTestState();
}

class _ColumnInColumnTestState extends State<ColumnInColumnTest> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            color: Colors.deepPurpleAccent,
            width: 400,
            height: 410,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 12),
                          child: Container(
                            child: Icon(
                              Icons.circle_rounded,
                              size: 11,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 11, right: 13, top: 23),
                          child: Container(
                            width: 340,
                            height: 25,
                            child: TextField(
                              style: TextStyle(fontSize: 23),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        // color: Colors.deepPurpleAccent
                                        )),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.deepPurpleAccent,
                                      width: 2.5),
                                ),
                              ),
                              cursorColor: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 30,
                      ),
                      // color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 버킷 프로필, 제목입력 위젯
Widget _buildProfileRow() {
  return Card(
    margin: EdgeInsets.zero,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 8, bottom: 8),
          child: Container(
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
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                width: 200,
                height: 20,
                child: Text(
                  '버킷리스트 제목 입력',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 200,
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              // color: Colors.deepPurpleAccent
                              )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2.5),
                      ),
                    ),
                    cursorColor: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// 공개 여부 토글, SAVE 위젯(하단)
class SecretCheckToggleButton extends StatefulWidget {
  const SecretCheckToggleButton({Key? key}) : super(key: key);

  @override
  State<SecretCheckToggleButton> createState() =>
      _SecretCheckToggleButtonState();
}

class _SecretCheckToggleButtonState extends State<SecretCheckToggleButton> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.amberAccent,
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
                child: Container(
                  // color: Colors.red,
                  child: Icon(
                    Icons.security_sharp,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  // color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Switch(
                        value: _isSwitched,
                        onChanged: (value) {
                          setState(() {
                            _isSwitched = value;
                          });
                        },
                        activeColor: Colors.deepPurpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 155),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    // color: Colors.tealAccent,
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(
                      // SAVE 버튼 눌렀을 떄 이벤트(DB에 저장)
                      onPressed: () {},
                      icon: Icon(Icons.add_task, size: 30),
                      label: Text(
                        'SAVE',
                        style: TextStyle(fontSize: 22),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: Size(100, 45),
                          backgroundColor: Colors.deepPurpleAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 프로필 사진 편집 버튼
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
