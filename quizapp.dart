
import 'dart:io';

class Question {
  String question;
  List<String> options;
  int correctAnswer;

  Question(this.question, this.options, this.correctAnswer);
}

void main() {
  // Define quiz questions
  List<Question> questions = [
    Question(
        "What is the capital of France?",
        ["London", "Paris", "Berlin", "Rome"],
        1), // Correct answer is Paris (index 1)
    Question(
        "Which planet is known as the Red Planet?",
        ["Mars", "Jupiter", "Venus", "Mercury"],
        0), // Correct answer is Mars (index 0)
    Question(
        "What is the largest mammal in the world?",
        ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
        1), // Correct answer is Blue Whale (index 1)
  ];

  int score = 0;

  // Display and process each question
  for (int i = 0; i < questions.length; i++) {
    print("Question ${i + 1}: ${questions[i].question}");
    for (int j = 0; j < questions[i].options.length; j++) {
      print("${j + 1}. ${questions[i].options[j]}");
    }

    stdout.write("Your answer: ");
    int userAnswer = int.parse(stdin.readLineSync() ?? '');

    if (userAnswer - 1 == questions[i].correctAnswer) {
      print("Correct!");
      score++;
    } else {
      print("Incorrect! The correct answer is: ${questions[i].options[questions[i].correctAnswer]}");
    }
    print("");
  }

  // Display final score
  print("Quiz Complete!");
  print("Your Score: $score out of ${questions.length}");
}

// This program defines a `Question` class to represent each quiz question. It then creates a list of 
// `Question` objects and iterates through them, prompting the user 
// to select an answer for each question. After the quiz is complete, the program calculates and 
// displays the user's score.