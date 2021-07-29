/*
*Make a two-player Rock-Paper-Scissors game against computer.
*Ask for player’s input, compare them, print out a message to the winner.
*/
import "dart:math";
import "dart:io";
void main()
{
  int user = 0;
  int comp = 0;
   Map rules = {"rock" : "scissor",
               "scissor" : "paper",
                "paper" : "rock"};
  List choice =["rock","scissor","paper"];
  while (true)
  {
    String user_choice= stdin.readLineSync();
    final _random = new Random();
    String computer_choice = choice[0 + _random.nextInt(3 - 0)]; 
    print(computer_choice);
    if(user_choice == "exit")
    {
        print("Your score is $user \nComputer Score is $comp");
        break;
    }
    if(!(choice.contains(user_choice)))
    {
      print("incorrect input please enter again");
    }
    else if(user_choice == computer_choice)
    {
      print("we have a tie!");
    }
    else if(rules[user_choice] == computer_choice)
    {
	  user++;
      print("Win!!! Come to bocal to get your prize\nYour Score = $user\nComputer Score = $comp");
      
    }
    else if(rules[computer_choice] == user_choice)
    {
	  comp++;
      print("good luck in the next time!! \nYour Score = $user\nComputer Score = $comp");
    }
}
}
