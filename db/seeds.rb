puts "Creating a user"

Question.destroy_all
Game.destroy_all
Competence.destroy_all
User.destroy_all

u = User.create!(name: "test1", email: "test@test.com", password: "123456")
v = User.create!(name: "test2", email: "test2@test.com", password: "123456")
w = User.create!(name: "test3", email: "test3@test.com", password: "123456")



puts "Creating competences..."

competence1 =  Competence.create!(
  name: "Social Skills",
  description: "Human beings are sociable creatures and we have developed many ways to communicate our messages, thoughts and feelings with others. What is said is influenced by both verbal language and the way we use it - tone of voice, volume of speech and the words we choose - as well as by more subtle messages such as body language, gestures and other non-verbal communication methods."
)

competence2 = Competence.create!(
   name: "Self Management Skills",
description: "Self-management skills are those abilities that allow an employee to feel more productive when doing daily routine regardless of the working environment. Well-developed self-management skills will help you efficiently communicate with co-workers, management and customers, make right decisions, plan your working time, and keep your body healthy."
)

competence3 = Competence.create!(
   name: "Corporate Knowledge",
  description: "Majestic Events has been created for you to enjoy the best we have to offer."
)

competence4 = Competence.create!(
  name: "Expertise",
  description: "Majestic Events has been created for you to enjoy the best we have to offer."
)


puts "Creating games..."

game1 = Game.create!(
  name: "Game. 1",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game2 =  Game.create!(
  name: "Game. 2",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game3 = Game.create!(
  name: "Game. 3",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game4 = Game.create!(
  name: "Game. 4",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game5 = Game.create!(
  name: "Game. 5",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game6 = Game.create!(
  name: "Game. 6",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game7 = Game.create!(
  name: "Game. 7",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

game8 = Game.create!(
  name: "Game. 8",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

puts "Creating question..."


question1 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game1
)


question2 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game1
)


question3 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game1
)


question4 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game1
)

question5 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game5
)

question6 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game5
)

question7 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game5
)

question8 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game5
)

question9 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game6
)

question10 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)

question11 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)

question12 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)
question13 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question14 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question15 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question17 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question18 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)
question19 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)
question20 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)


question21 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game2
)

question22 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game2
)

question23 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game2
)
question24 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game2
)
question25 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)
question26 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)
question27 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)
question28 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question29 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question30 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)



puts "Creating answers..."


answer1 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question1
)


answer2 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question1
)


answer3 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question1
)


answer4 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question1
)

answer5 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question2
)

answer6 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question2
)

answer7 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question2
)

answer8 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question3
)

answer9 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question3
)

answer10 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question3
)

answer11 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question3
)

answer12 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question6
)
answer13 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question7
)
answer14 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer15 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer17 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer18 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question8
)
answer19 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question8
)
answer20 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question8
)

answer21 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question9
)

answer22 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question9
)

answer23 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question9
)
answer24 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question9
)
answer25 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question10
)
answer26 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question10
)
answer27 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question10
)
answer28 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question11
)
answer29 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question11
)
answer30 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question11
)


puts 'Finished!'





