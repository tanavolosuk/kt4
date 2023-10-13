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
      body: Column(
        children: [
          Container(
            //контейнер, место, создающее окошко авторизации
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 32), //падинг окошка авторизации
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    10), //круглые края для окошка авторизации
                color: const Color.fromRGBO(
                    250, 252, 255, 1)), //цвет окошка авторизации
            margin: const EdgeInsets.only(
                top: 60,
                bottom: 60,
                left: 576,
                right: 576), //расположение окошка авторизации
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //начало по центру
              children: [
                const SizedBox(height: 24),
                //Image.network('https://esia.gosuslugi.ru/login/logo.4db68cf668f7092d.svg'), Я ПЫТАЛАСЬ!!!!!!!!!!
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text("ГОС", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Color.fromRGBO(40, 101, 184, 1))),
                    ),
                    SizedBox(
                      child: Text("УСЛУГИ", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Color.fromRGBO(240, 41, 84, 1))),
                    ),
                  ],
                ),
                // const Text("ГОСУСЛУГИ",
                //     style:
                //         TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                const SizedBox(height: 24),
                TextField(
                  //поле воода логина
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
                  //поле воода пароля
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          //то, что постоянно
                          borderSide: BorderSide.none, //убрать рамку
                          borderRadius:
                              BorderRadius.circular(10)), //закруглить края
                      focusedBorder: OutlineInputBorder(
                          //то, что при наведении на объект
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(13, 76, 211, 1)),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true, //обозначить цвет для поля ввода данных
                      fillColor: const Color.fromRGBO(245, 247, 250, 1),
                      hintText: "Пароль"),
                ),
                const SizedBox(height: 5),
                Row(
                  //писать в одной строке
                  mainAxisAlignment: MainAxisAlignment
                      .start, //чтобы слово восстановить было не по середине
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Восстановить",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(13, 76, 211, 1)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                SizedBox(
                  width: double.infinity, //растянуть кнопку на полную ширину
                  height: 48,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(13, 76, 211, 1)),
                      ), //цвет кнопки
                      onPressed: () {},
                      child: const Text(
                        "Войти",
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                const SizedBox(height: 48),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Войти другим способом",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(102, 114, 127, 1)),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //расположит по разне стороны от контейнера
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 48,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                shape: MaterialStatePropertyAll<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(250, 252, 255, 1))),
                            onPressed: () {},
                            child: const Text(
                              "QR-код",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(13, 76, 211, 1)),
                            )),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 48,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                shape: MaterialStatePropertyAll<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(250, 252, 255, 1))),
                            onPressed: () {},
                            child: const Text(
                              "Эл. подпись",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(13, 76, 211, 1)),
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Не удается войти?",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(13, 76, 211, 1)),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Зарегистрироваться",
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(13, 76, 211, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
