import 'package:flutter/material.dart';

/// メイン関数
void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Q3(),
      ),
    ),
  );

  // アプリ起動
  runApp(app);
}

/// Q1
class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Container(color: Colors.red),
          ),
          Expanded(
            child: Container(color: Colors.green),
          ),
          SizedBox(
            width: 60,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

/// Q2
class Q2 extends StatelessWidget {
  const Q2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Container(color: Colors.red),
          ),
          Expanded(
            child: Container(color: Colors.green),
          ),
          SizedBox(
            height: 60,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

/// Q3
class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Row(
        children: [
          // 左側
          Expanded(
            child: Container(color: Colors.red),
          ),

          // 右側
          SizedBox(
            width: 120,
            child: Column(
              children: [
                // 上側
                Expanded(
                  child: Container(color: Colors.green),
                ),

                // 下側
                SizedBox(
                  height: 60,
                  child: Container(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Q4
class Q4 extends StatelessWidget {
  const Q4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(color: Colors.red),
                      ),
                      SizedBox(
                        height: 90,
                        child: Container(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Container(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

/// Q5
class Q5 extends StatelessWidget {
  const Q5({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Container(color: Colors.red),
                      ),
                      Expanded(
                        child: Container(color: Colors.green),
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Container(color: Colors.blue),
                            ),
                            Expanded(
                              child: Container(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Container(color: Colors.blue),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
