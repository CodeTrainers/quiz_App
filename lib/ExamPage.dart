import 'package:flutter/material.dart';
import 'package:newproj/Models/QuestionModel.dart';

class ExamPage extends StatefulWidget {
   ExamPage({super.key, required this.course});
   String course;

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<QuestionModel> questions = [
    QuestionModel(
        id: "1",
        description: "What is 2+2 ?",
        options: {'5': false, '15': false, '4': true}
    ),
    QuestionModel(
        id: "2",
        description: "What is 12/2 ?",
        options: {'9': false, '6': true, '16': false}
    ),
  ];
  bool isPressed = false, isSelected = false, isLastQuestion = false;

  void nextQuestion (){
    if(index == questions.length -1) {
      setState(() {
        isLastQuestion = true;
      });
      return;
    }else{
      setState(() {
        isLastQuestion = false;
      });
      if(isPressed){
        setState(() {
          index++;
          isPressed = false;
          isSelected = false;
        });
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Please complete the current question"),
              behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 20.0),)
        );
      }
    }
  }

  void checkAnswerAndUpdate(bool answer){
    if(isSelected){
      return;
    }
    else {
      if (answer == true) {
        score++;
        setState(() {
          isPressed = true;
          isSelected = true;
        });
      }
    }
  }


  int index = 0, score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.course} Quiz",
          style: const TextStyle(color: Colors.blueAccent, fontSize: 18),),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0),
            child: Text("Score: $score", style: const TextStyle(fontSize: 18.0),),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              ExamTile(question: questions[index].description, totalQuestions: questions.length, index: index),
              const Divider(color: Colors.black38,thickness: 2,),
              const SizedBox(height: 25,),
              for(int i = 0; i < questions[index].options.length; i++)
                GestureDetector(
                  onTap:()=> checkAnswerAndUpdate(questions[index].options.values.toList()[i]),
                  child: OptionCard(
                    option: questions[index].options.keys.toList()[i],
                    color: isPressed ?
                      questions[index].options.values.toList()[i] == true ?
                      Colors.green :
                      Colors.red :
                      Colors.transparent,
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: isLastQuestion ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                nextQuestion();
              },
              child: Container(
                width: MediaQuery.of(context).size.width/2.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow:const [
                     BoxShadow(
                      color: Colors.blueGrey, //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0,2), // changes position of shadow
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: isLastQuestion == false ? const Text( "Next Question" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)
                : const Text( "Retry" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
              ),
            ),
            GestureDetector(
              onTap: (){
                nextQuestion();
              },
              child: Container(
                width: MediaQuery.of(context).size.width/2.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.blueGrey, //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0,2), // changes position of shadow
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: isLastQuestion == false ? const Text( "Next Question" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)
                    : const Text( "Retry" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
              ),
            ),
          ],
        )
        : GestureDetector(
          onTap: (){
            nextQuestion();
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow:const [
                BoxShadow(
                  color: Colors.blueGrey, //color of shadow
                  spreadRadius: 2, //spread radius
                  blurRadius: 2, // blur radius
                  offset: Offset(0,2), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: isLastQuestion == false ? const Text( "Next Question" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)
                : const Text( "Retry" , textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ExamTile extends StatelessWidget {
  ExamTile({super.key, required this.question, required this.totalQuestions, required this.index});

   String question;
   int index, totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Question ${index +1 }: $question'),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  OptionCard({super.key, required this.option, required this.color});
  String option;
  late Color color, white, black;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(option, textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16,
          color: Colors.black),),
      ),
    );
  }
}

