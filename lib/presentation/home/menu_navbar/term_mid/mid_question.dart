class QuestionMid {
  String? question;
  Map<String, bool>? answers;
  QuestionMid(this.question, this.answers);
}

List<QuestionMid> questions = [
  QuestionMid(
    "Young people who have grown up with PCs and mobile phones are often called ...",
    {
      "Digital Age": false,
      "Computer Generation": false,
      "Digital Generation": true,
      "Computer Age": false,
    },
  ),
  QuestionMid(
    "These activities  do not show the use of computer at school ...",
    {
      "To give presentation": false,
      "To keep records of students and teacher": false,
      "Enroll for courses": false,
      "Transfer cash via ATM": true,
    },
  ),
  QuestionMid(
    "The word (they) in paragraph 4 refers to ...",
    {
      "The banks": false,
      "The computers": true,
      "The people": false,
      "The money": false,
    },
  ),
  QuestionMid(
    "The word (carry out) in paragraph 3 means ...",
    {
      "Execute": true,
      "Bring": false,
      "Take": false,
      "Leave": false,
    },
  ),
  QuestionMid(
    "This statement are true based on the text, except ...",
    {
      "Computers store information about the money held by each customer":
          false,
      "With offline banking clients can easily pay bills and transfer money from the comfort of their homes.":
          true,
      "Computers can be used to store clients’ information": false,
      "In banks, computers can carry out transaction in high speed.": false,
    },
  ),
  QuestionMid(
    "Which one of the following sentence is true?",
    {
      "Mainframe is lighter than desktop PC.": false,
      "CPU is cheaper than USB drive.": false,
      "Webcam is as small as keyboard": false,
      "Laptop is more expensive than HDMI cable.": true,
    },
  ),
  QuestionMid(
    "PC system has two main parts namely ...",
    {
      "CPU and main memory": false,
      "Software and hardware": true,
      "Peripherals and Storage": false,
      "Input and Output Device": false,
    },
  ),
  QuestionMid(
    "This following is included as input device ...",
    {
      "Printer": false,
      "Keyboard": true,
      "Monitor": false,
      "projector": false,
    },
  ),
  QuestionMid(
    "This is Mrs. Smith ... daughter is in my class.",
    {
      "Who": false,
      "Whom": false,
      "Whose": true,
      "That": false,
    },
  ),
  QuestionMid(
    "That’s the hotel ... the IT seminar is held.",
    {
      "When": false,
      "Where": true,
      "Who": false,
      "Whom": false,
    },
  ),
];
