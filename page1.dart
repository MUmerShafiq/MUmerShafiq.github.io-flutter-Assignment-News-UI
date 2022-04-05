import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({
    Key? key,
    required this.image,
    required this.followers,
  });
  String image;
  String followers;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SizedBox(
                height: double.infinity,
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage(
                          image,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      customText(text: "Flutter is Awesome", fontSize: 24),
                      const SizedBox(
                        height: 15,
                      ),
                      customText(
                        text: "Student",
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textColumn('872.4K', 'Hits'),
                          Container(
                            color: Colors.grey.shade300,
                            height: 60,
                            width: 1,
                          ),
                          textColumn(followers, 'Followers'),
                          Container(
                            color: Colors.grey.shade300,
                            height: 60,
                            width: 1,
                          ),
                          textColumn('127', 'Following'),
                        ],
                      ),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          roundFillButton(),
                          roundOutlinedButton('Website'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customText(
                              text: 'Top News',
                              fontSize: 16,
                            ),
                            customText(
                              text: 'Recents',
                              fontSize: 16,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 200,
                            child: Divider(
                              indent: 20,
                              thickness: 2,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Divider(
                              thickness: 2,
                              endIndent: 20,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 350,
                        width: 400,
                        child: Column(
                          children: [
                            listNews(
                                'assets/images/1.PNG',
                                'Wow! USA Develops New\nWay of Faster and More ...',
                                'Health'),
                            const SizedBox(
                              height: 10,
                            ),
                            listNews(
                                'assets/images/2.PNG',
                                'Machester United Adds a\nFamous Portugal Player ...',
                                'Sport'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  listNews(String image, String text, String tag) {
    return Container(
      height: 160,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(width: 2, color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            height: 175,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    'Muhammad Umer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                                width: 1,
                                color: Colors.red.shade300,
                              )),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: customText(
                      text: tag,
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container roundOutlinedButton(String text) {
    return Container(
      width: 185,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
                width: 1,
                color: Colors.red.shade300,
              )),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.language,
              color: Colors.red.shade300,
            ),
            const SizedBox(
              width: 10,
            ),
            customText(
              text: text,
              fontSize: 14,
              color: Colors.red.shade300,
            )
          ],
        ),
      ),
    );
  }

  Container roundFillButton() {
    return Container(
      width: 185,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Colors.red.shade300,
          ),
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_add_alt_1,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            customText(
              text: 'Follow',
              fontSize: 14,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  textColumn(String title, String subtitle) {
    return Column(
      children: [
        customText(
          text: title,
          fontSize: 24,
        ),
        const SizedBox(
          height: 10,
        ),
        customText(
          text: subtitle,
          fontSize: 16,
        ),
      ],
    );
  }

  customText({
    required String text,
    required double fontSize,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
