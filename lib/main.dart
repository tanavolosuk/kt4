import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //чистый холст
      backgroundColor: const Color.fromRGBO(228, 236, 253, 1),
      body: Container(
        //контейнер, место, создающее окошко авторизации
        padding: const EdgeInsets.symmetric(
            vertical: 12, horizontal: 32), //падинг окошка авторизации
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), //круглые края для окошка авторизации
            color: const Color.fromRGBO(
                250, 252, 255, 1)), //цвет окошка авторизации
        margin: const EdgeInsets.only(
            top: 60,
            bottom: 64,
            left: 576,
            right: 576), //расположение окошка авторизации
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //начало по центру
          children: [
            const SizedBox(height: 48),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(13, 76, 211, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromRGBO(245, 247, 250, 1),
                  hintText: "Телефон / Email / СНИЛС"),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      //то, что постоянно
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      //то, что при наведении на объект
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(13, 76, 211, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromRGBO(245, 247, 250, 1),
                  hintText: "Пароль"),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Восстановить",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(13, 76, 211, 1)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(13, 76, 211, 1))), //цвет кнопки
                  onPressed: () {},
                  child: const Text(
                    "Войти",
                  )),
            ),
            const SizedBox(height: 48),
            const Text(
              "Войти другим способом",
              style: TextStyle(fontSize: 16, color: Color.fromRGBO(102, 114, 127, 1)),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
