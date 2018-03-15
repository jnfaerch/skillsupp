puts "Creating a user"

UserAnswer.destroy_all
Answer.destroy_all
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
   name: "Corporate Culture",
  description: "Corporate culture refers to the shared values, attitudes, standards, and beliefs that characterize members of an organization and define its nature. Corporate culture is rooted in an organization's goals, strategies, structure, and approaches to labor, customers, investors, and the greater community. As such, it is an essential component in any business's ultimate success or failure."
)

competence4 = Competence.create!(
  name: "Expertise",
  description: "Basis of credibility of a person who is perceived to be knowledgeable in an area or topic due to his or her study, training, or experience in the subject matter."
)


puts "Creating games..."

game1 = Game.create!(
  name: "Communication",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game2 =  Game.create!(
  name: "Conflict Handling",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game3 = Game.create!(
  name: "Teamwork",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game4 = Game.create!(
  name: "Presentation",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game5 = Game.create!(
  name: "Persuasion",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game6 = Game.create!(
  name: "Time Management",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game7 = Game.create!(
  name: "Mission",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game8 = Game.create!(
  name: "Customer Orientation",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game9 = Game.create!(
  name: "Corruption",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game10 = Game.create!(
  name: "Company History",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

game11 = Game.create!(
  name: "IT Basics",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

game12 = Game.create!(
  name: "Projectmanagement",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

puts "Creating question..."


question4 = Question.create!(
  content: "What is the first step to successfully assert your concern with your team members?",
  feedback: "1. Make yourself aware of what your concern is and why it is important for you, for your organization and other people.

2. Identify the relevant players for the request. Consider who of these could potentially be your target or harm it.

3. Evaluate which of your fellow players has a lot of influence and why. How much does the person trust / mistrust me?
And how much is the person convinced of the sense/nonsense of the project?
4. Consider your strategic planning options and the next steps, e. g. kick-off meeting.",
  question_type: "type2 ",
  game: game1
)


question1 = Question.create!(
  content: "You are in a bad mood and the first person you see is the one you hate. How do you react?",
  feedback: "Even if we would like to beat someone up sometimes, especially on Monday mornings, it's never a good idea. You never know when you'll have to work together next time...",
  question_type: "type2 ",
  game: game1
)


question3 = Question.create!(
  content: "What is the best way to express your joy about a successful project?",
  feedback: "It is always a good idea to celebrate! Just don't get the idea of flirting drunk with your boss!",
  question_type: "type2 ",
  game: game1
)


question2 = Question.create!(
  content: "Choose the right answer for successful communication with your colleagues:",
  feedback: "All those who communicate with screams have so far perished at some point...",
  question_type: "type2 ",
  game: game1
)

question5 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game2
)

question6 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game2
)

question7 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game2
)

question8 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game2
)

question9 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game3
)

question10 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)

question11 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)

question12 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game3
)
question13 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question14 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question15 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question16 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game4
)
question17 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game5
)
question18 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game5
)
question19 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game5
)
question20 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game5
)
question21 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)

question22 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)
question23 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)
question24 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game6
)
question25 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question26 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question27 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question28 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7
)
question29 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)

question30 = Question.create!(
  content: "What is the first step to successfully assert your concern with your team members?",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)
question31 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)
question32 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game8
)
question33 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game9
)
question34 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game9
)
question35 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game9
)
question36 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game9
)
question37 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game10
)
question38 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game10
)
question39 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game10
)
question40 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game10
)
question41 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game11
)
question42 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game11
)
question43 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game11
)
question44 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game11
)
question45 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game12
)
question46 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game12
)
question47 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game12
)
question48 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game12
)


puts "Creating answers..."


answer1 = Answer.create!(
  content: "Clarity of approach",
  correct: true,
  question: question4
)


answer2 = Answer.create!(
  content: "Identify relevant players",
  correct: false,
  question: question4
)


answer3 = Answer.create!(
  content: "Relationship analysis",
  correct: false,
  question: question4
)


answer4 = Answer.create!(
  content: "Think about strategic options",
  correct: false,
  question: question4
)

answer5 = Answer.create!(
  content: "I invite the person to a coffee.",
  correct: false,
  question: question1
)

answer6 = Answer.create!(
  content: "I punch the person in the face.",
  correct: false,
  question: question1
)

answer7 = Answer.create!(
  content: "I give the person an evil look.",
  correct: false,
  question: question1
)

answer8 = Answer.create!(
  content: "I friendly say hello to the person.",
  correct: true,
  question: question1
)

answer9 = Answer.create!(
  content: "I tell everyone about how great you have worked yourself, because that's how it was.",
  correct: false,
  question: question3
)

answer10 = Answer.create!(
  content: "I don't tell anything, because I'm being humble.",
  correct: false,
  question: question3
)

answer11 = Answer.create!(
  content: "I tell you about the project and mention the great cooperation of my colleagues.",
  correct: false,
  question: question3
)

answer12 = Answer.create!(
  content: "I'm organizing a party, because you can always party.",
  correct: true,
  question: question3
)
answer13 = Answer.create!(
  content: "Scream and demand.",
  correct: false,
  question: question2
)
answer14 = Answer.create!(
  content: "Scream and whine.",
  correct: false,
  question: question2
)
answer15 = Answer.create!(
  content: "Explain and ask.",
  correct: true,
  question: question2
)
answer17 = Answer.create!(
  content: "Demand and ask.",
  correct: false,
  question: question2
)
answer18 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question5
)
answer19 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question5
)
answer20 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question6
)

answer21 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question6
)

answer22 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question6
)

answer23 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer24 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer25 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question7
)
answer26 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question8
)
answer27 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question8
)
answer28 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question8
)
answer29 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question9
)
answer30 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question9
)


answer32 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question6
)

answer33 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question6
)
answer34 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question6
)
answer35 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question7
)
answer36 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer37 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question7
)
answer38 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question14
)
answer39 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question14
)
answer40 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question14
)
puts 'Finished!'





