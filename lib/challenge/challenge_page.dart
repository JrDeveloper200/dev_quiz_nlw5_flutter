import 'package:devquiz/challenge/widgets/next-button/next_button_widget.dart';
import 'package:devquiz/challenge/widgets/question_indicator/question_indication_widget.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: 'O que o Flutter faz em sua totalidade?',
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: NextButtonWidget.green(label: "Pular")),
            Expanded(child: NextButtonWidget.white(label: "Confirmar")),
          ],
        ),
      ),
    );
  }
}
