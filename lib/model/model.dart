class Quiz {
  const Quiz(this.question, this.answer);
  final String question;
  final bool answer;
}

const q1 = Quiz('Are there 7 regions in Kyrgyzstan?', true);
const q2 = Quiz('Tatina have boyfriend?', false);
const q3 = Quiz('The Taiwan have trouble  winter? ', false);
const q4 = Quiz('London is capital of Anglian', true);
const q5 = Quiz('Doing harassment is just joke?', false);
const q6 = Quiz('is okay if I hug stanger without permission', false);
const q7 = Quiz('Lost time never found again', true);

const quizes = <Quiz>[q1, q2, q3, q4, q5, q6, q7];
