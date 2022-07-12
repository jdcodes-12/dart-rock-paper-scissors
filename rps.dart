import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  
  final randomGenerator = Random();

  while(true) {

    print('Welcome to Rock, Paper, Scissors');
    stdout.write('Enter your move (r, p, s): ');
    final userInput = stdin.readLineSync();
    print('');
    
    if (userInput == 'q') {
      print('Thanks for playing! Have a good day (^.^)v');
      break;
    }

    if(userInput != 'q' && userInput != 'r' &&
       userInput != 'p' && userInput != 's') {
        print('Invalid move input... let\'s try again');
        continue;
    }

    var playerMove;
    switch (userInput) {
      case 'r': playerMove = Move.rock;
                break;
      case 'p': playerMove = Move.paper;
                break;
      case 's': playerMove = Move.scissors;
                break;
    }

    final random = randomGenerator.nextInt(3);
    var aiMove = Move.values[random];

    if (playerMove == aiMove) {
       displayResults(playerMove, aiMove);
       print('Draw!');
       displayLineBreak();

    } 
    else if ( playerMove == Move.rock && aiMove == Move.scissors) {
      displayResults(playerMove, aiMove);
      print('You Win!\n');
      displayLineBreak();
    }
    else if ( playerMove == Move.paper && aiMove == Move.rock) {
      displayResults(playerMove, aiMove);
      print('You Win!\n');
      displayLineBreak();
    }
    else if ( playerMove == Move.scissors && aiMove == Move.paper) {
      displayResults(playerMove, aiMove);
      print('You win!\n');
      displayLineBreak();
    }
    else {
      displayResults(playerMove, aiMove);
      print('You lose...\n');
      displayLineBreak();
    }
  }
  
}

void displayResults(Move playerMove, Move aiMove) {
  print('Player Move: ${playerMove.name}');
  print('AI move: ${aiMove.name}');
}

void displayLineBreak() {
  print('-----\n');
}