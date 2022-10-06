import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  List<Map> _keys0 = [
    {1: 2},
    {2: 1}
  ];

  List<Map> _keys1 = [
    {1: 2},
    {2: 3}
  ];

  List<Map> _keys2 = [
    {1: 5},
    {2: 4}
  ];

  int _storyNumber = 0;

  String getStory() {
    return this._storyData[this._storyNumber].storyTitle;
  }

  String getChoice1() {
    return this._storyData[this._storyNumber].choice1;
  }

  String getChoice2() {
    return this._storyData[this._storyNumber].choice2;
  }

  void _restart() {
    this._storyNumber = 0;
  }

  void nextStory(choiceNumber) {
    if (this._storyNumber == 0) {
      this._storyNumber = this._keys0[choiceNumber - 1][choiceNumber];
    }
    else if (this._storyNumber == 1) {
      this._storyNumber = this._keys1[choiceNumber - 1][choiceNumber];
    }
    else if (this._storyNumber == 2) {
      this._storyNumber = this._keys2[choiceNumber - 1][choiceNumber];
    }
    else {
      this._restart();
    }
  }

  bool buttonShouldBeVisible(){
    if(this._storyNumber < 3){
      return true;
    }
    else{
      return false;
    }
  }
}

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
