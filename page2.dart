import 'package:flutter/material.dart';
import 'package:news_ui/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    customCard({
      required String image,
      required String title,
      required String subtitle,
      required bool isFollowing,
      required BuildContext context,
    }) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Page1(
                image: image,
                followers: subtitle,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF23252F),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            height: 75,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      image,
                    ),
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "$subtitle Followers",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  trailing: isFollowing
                      ? customOutlinedButton()
                      : customElevatedButton(),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1A1B22),
        body: Center(
          child: Container(
            height: double.infinity,
            width: 400,
            color: const Color(0xFF1A1B22),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Search Results",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "22,276 founds",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red.shade300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  customCard(
                    image: 'assets/images/Mask Group.png',
                    title: "BBC News",
                    subtitle: '6.5M',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'assets/images/Auto Layout Horizontal.png',
                    title: "CNN",
                    subtitle: '616.3K',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'assets/images/3.png',
                    title: "CNET",
                    subtitle: '148K',
                    context: context,
                    isFollowing: false,
                  ),
                  customCard(
                    image: 'assets/images/dailymail.jpg',
                    title: "Daily Mail",
                    subtitle: '577.4K',
                    isFollowing: false,
                    context: context,
                  ),
                  customCard(
                    image: 'assets/images/time.png',
                    title: "TIME",
                    subtitle: '574.4K',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'assets/images/buzzfeed.png',
                    title: "Buzzfeed",
                    subtitle: '381.4K',
                    isFollowing: false,
                    context: context,
                  ),
                  customCard(
                    image: 'assets/images/usa.png',
                    title: "USA Today",
                    subtitle: '365.5K',
                    isFollowing: true,
                    context: context,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  customElevatedButton() {
    return ElevatedButton(
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
      child: const Text(
        " + Follow ",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }

  customOutlinedButton() {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: Colors.red.shade900,
            width: 2,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Following",
        style: TextStyle(
          color: Colors.red.shade300,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
