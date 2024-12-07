import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(255, 220, 142, 244),
            // height: 360,
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Color.fromARGB(255, 220, 142, 244),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
          ),
          // Container(
          //   height: 40,
          //   width: 120,
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 102, 31, 225),
          //     border: Border.all(color: Colors.black12),
          //     borderRadius: BorderRadius.circular(0.6),
          //   ),
          //   child: const Center(
          //     child: Text(
          //       'Start Quiz',
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w600),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
