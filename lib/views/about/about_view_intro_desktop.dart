import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';

class IntroductionAboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    double c_height = MediaQuery.of(context).size.height * 0.7;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
  }) : super(key: key);

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget =
        "I am a 2 year undergraduate student from (INDIA).\n"
                " My knowledge provides worth to my words " - Huzo Zhyrhy 👩‍💻
                "A second year CSE undergraduate student.\n"
                "Getting into college was the turning point in my life. My passion for computers and problem solving made me choose a field in Computer Science. I had unlimited resources to learn from. And the underconfident personality of mine that I am not enough is what keeps me up at night and makes me learn new things every day./n"
                "I am specialising in:\n"
                "•Machine Learning\n"
                "•Artificial Intelligence\n"
                "•Full Stack Web Development\n"
                "•Android Development\n"
                "•Competitive Programming\n"
                "Oh, and did I say I'm also a State-level Basketball player and chess as my favorite sport?"
                
            .text
            .white
            .xl2
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(children: <Widget>[
      AboutintroWidget,
      CustomText(
        text:
            "Here are a few technologies I've been working with recently:\n\n",
        textsize: 16.0,
        color: Color(0xff828DAA),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.75,
      ), // crossAlignment: CrossAxisAlignment.center,
      Container(
        height: size.height * 0.30,
        width: size.width,
        //   color: Colors.redAccent,
        child: Row(
          children: [
            Container(
              width: size.width * 0.20,
              height: size.height * 0.25,
              child: Column(
                children: [
                  technology(context, "Python"),
                  technology(context, "Flutter"),
                  technology(context, "Rust"),
                  technology(context, "MERN"),
                  technology(context, "Tensorflow JS"),
                ],
              ),
            ),
            Container(
              width: size.width * 0.15,
              height: size.height * 0.25,
              child: Column(
                children: [
                  technology(context, "HTML & (S)CSS"),
                  technology(context, "Open CV"),
                  technology(context, "Machine Learning"),
                  technology(context, "Node.js"),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
