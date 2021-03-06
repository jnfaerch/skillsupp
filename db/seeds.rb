puts "Creating a user"

UserAnswer.destroy_all
Answer.destroy_all
Question.destroy_all
Game.destroy_all
Competence.destroy_all
Color.destroy_all
User.destroy_all

u = User.create!(name: "Tanja", email: "tanja@lewagon.com", password: "123456", photo: "tanja")
v = User.create!(name: "Juandi", email: "juandi@lewagon.com", password: "123456", photo: "juandi")
w = User.create!(name: "Johan", email: "johan@lewagon.com", password: "123456", photo: "johan")
a = User.create!(name: "Admin", email: "admin@lewagon.com", password: "123456", role: "admin", photo: "johan")

puts "Creating colors..."

color1 =  Color.create!(
  name: "bg-primary",
  number: 1,
  icon: "far fa-heart"
  )

color2 = Color.create!(
  name: "bg-info",
  number: 2,
  icon: "far fa-star"
  )

color3 = Color.create!(
  name: "bg-my-black",
  number: 3,
  icon: "far fa-paper-plane"
  )

color4 = Color.create!(
  name: "bg-warning",
  number: 4,
  icon: "fas fa-search"
  )

puts "Creating competences..."

competence1 =  Competence.create!(
  name: "Social Skills",
  description: "Human beings are sociable creatures and we have developed many ways to communicate our messages, thoughts and feelings with others.<br><br>What is said is influenced by both verbal language and the way we use it - tone of voice, volume of speech and the words we choose - as well as by more subtle messages such as body language, gestures and other non-verbal communication methods.",
  color: color1
)

competence2 = Competence.create!(
  name: "Self Management",
  description: "Self-management skills are those abilities that allow an employee to feel more productive when doing daily routine regardless of the working environment.<br><br>Well-developed self-management skills will help you efficiently communicate with co-workers, management and customers, make right decisions, plan your working time, and keep your body healthy.",
  color: color2
)

competence3 = Competence.create!(
  name: "Corporate Culture",
  description: "Corporate culture refers to the shared values, attitudes, standards, and beliefs that characterize members of an organization and define its nature.<br><br>Corporate culture is rooted in an organization's goals, strategies, structure, and approaches to labor, customers, investors, and the greater community. As such, it is an essential component in any business's ultimate success or failure.",
  color: color3
)

competence4 = Competence.create!(
  name: "Expertise",
  description: "Basis of credibility of a person who is perceived to be knowledgeable in an area or topic due to his or her study, training, or experience in the subject matter.",
  color: color4
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
  name: "Time Management",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game5 = Game.create!(
  name: "Creativity",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence2
)

game6 = Game.create!(
  name: "Presentation",
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
  name: "Company History",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence3
)

game10 = Game.create!(
  name: "Corruption",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

game11 = Game.create!(
  name: "IT Basics",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

game12 = Game.create!(
  name: "Project Management",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence4
)

puts "Creating question..."

# Game 1 / social skills
question1 = Question.create!(
  content: "Choose the right answer for successful communication with your colleagues:",
  feedback: "All those who communicate with screams have so far perished at some point...",
  question_type: "type2 ",
  game: game1
)

question2 = Question.create!(
  content: "What is the first step to successfully assert your concern with your team members?",
  feedback: "1. Make yourself aware of what your concern is and why it is important for you, for your organization and other people.<br><br>

2. Identify the relevant players for the request. Consider who of these could potentially be your target or harm it.<br><br>

3. Evaluate which of your fellow players has a lot of influence and why. How much does the person trust / mistrust me?
And how much is the person convinced of the sense/nonsense of the project?<br><br>
4. Consider your strategic planning options and the next steps, e. g. kick-off meeting.",
  question_type: "video",
  game: game1,
  video: "UkYsd0Ibxp4"
)

question3 = Question.create!(
  content: "What is the best way to express your joy about a successful project?",
  feedback: "It is always a good idea to celebrate! <br>Just don't get the idea of flirting drunk with your boss!",
  question_type: "type2 ",
  game: game1
)
question4 = Question.create!(
  content: "You are in a bad mood and the first person you see is the one you hate. How do you react?",
  feedback: "Even if we would like to beat someone up sometimes, especially on Monday mornings, it's never a good idea.<br>You never know when you'll have to work together next time...",
  question_type: "type2 ",
  game: game1
)

# game 2 / social skills
question5 = Question.create!(
  content: "The best conflict management style is…",
  feedback: "The problem solving style helps everyone understand in the conflict to review reasons and understand the pros and cons.",
  question_type: "photo",
  game: game2,
  photo: "conflict.jpg"

)

question6 = Question.create!(
  content: "The conflict management styles that can get you into the most trouble are…",
  feedback: "",
  question_type: "type2 ",
  game: game2
)

question7 = Question.create!(
  content: "The first thing to do when resolving conflict with someone else is to…",
  feedback: "",
  question_type: "type2 ",
  game: game2
)

question8 = Question.create!(
  content: "You should use the forcing conflict management style when…",
  feedback: "",
  question_type: "type2 ",
  game: game2
)

question9 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type2 ",
  game: game3
)

# game 3 / social skills
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

# game 4 / self management
question13 = Question.create!(
  content: "When a football player scores a perfectly scored own goal, then he is...",
  feedback: "Take a moment and think about your own daily work.<br>Are there situations in which you are efficient but not very effective?<br>How could you change that?",
  question_type: "type 1",
  game: game4
  )

question14 = Question.create!(
  content: "How much buffering time do you have to plan for unforeseen events these days?",
  feedback: "We live in a fast-moving environment where unforeseen changes happen at all times.<br>This requires more flexible time management.",
  question_type: "type1 ",
  game: game4
)
question15 = Question.create!(
  content: "The power of focus.<br><br>
  Without it, you're doomed to a life of distraction.<br>
  A life in which others' priorities dictate on what you spend your time.<br>As you move from one shiny object to another, you may get lots of things done--but few things ever get done well.
  <br><br>Or, you may find your life is ruled by procrastination, where doing great work is derailed by social media and YouTube videos.
  <br><br>But does focus mean? Watch the video and answer the questions below.",
  feedback: "Learning to say no begins by sharpening your emotional intelligence--the ability to make emotions work for you, instead of against you.
  <br><br>By refusing to let temporary emotions lead to permanent decisions, you'll realize that lack of focus easily leads to regret.
  <br><br>What are your next steps in improving your focusing skills?",
  question_type: "video",
  game: game4,
  video: "H8eP99neOVs"
)
# question16 = Question.create!(
#   content: " question 1content content content content content content content content content ",
#   feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
#   question_type: "type1 ",
#   game: game4
# )

# game 5 / self management
question17 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "video",
  game: game5,
  video: "yL7X3DTyS2Q"
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

# game 6 / self management
question21 = Question.create!(
  content: "How much buffering time do you have to plan for unforeseen events these days?",
  feedback: "We live in a fast-moving environment where unforeseen changes happen at all times.<br>This requires flexible time management.",
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

# game 7 / corporate culture
question25 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game7,
  video: "jS-4-dsblek"
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

# game 8 / corporate culture
question29 = Question.create!(
  content: " Indonesia's anti-drug chief announced the use of crocodiles to guard death row prisoners on an isolated island in Indonesia because, contrary to humans, crocodiles cannot be bribed:<br>'We will place as many crocodiles as we can there. I will search for the most ferocious type of crocodile.'",
  feedback: "",
  question_type: "type1 ",
  game: game8
)

question30 = Question.create!(
  content: "What is the first step to successfully assert your concern with your team members?",
  feedback: "",
  question_type: "type1 ",
  game: game8
)
question31 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "",
  question_type: "type1 ",
  game: game8
)
question32 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "",
  question_type: "type1 ",
  game: game8
)

# game 9 / corporate culture
question33 = Question.create!(
  content: " question 1content content content content content content content content content ",
  feedback: "feedback feedback feedback feedback feedback feedback feedback feedback ",
  question_type: "type1 ",
  game: game9
)
question34 = Question.create!(
  content: "question 1content content content content content content content content content",
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

# game 10 / expertise
question37 = Question.create!(
  content: "Indonesia's anti-drug chief announced the use of crocodiles to guard
death row prisoners on an isolated island in Indonesia because,
contrary to humans, crocodiles cannot be bribed:<br><br>'We will place as
many crocodiles as we can there. I will search for the most ferocious
type of crocodile.'",
  feedback: "Indonesia's government quickly explained it was a joke, but
days later the anti-drug chief said he might use tigers and piranha
fish, too.",
  question_type: "photo",
  game: game10,
  photo: "crocodile.png"
)
question38 = Question.create!(
  content: "What is blackmail?",
  feedback: "",
  question_type: "type1 ",
  game: game10
)
question39 = Question.create!(
  content: "What is corruption?",
  feedback: "",
  question_type: "type1 ",
  game: game10
)
question40 = Question.create!(
  content: "What is a conflict of interest?",
  feedback: "",
  question_type: "type1 ",
  game: game10
)

# game 11 / expertise
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

# game 12 / expertise
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

# game 1 / social skills / bad mood
answer1 = Answer.create!(
  content: "I invite the person to a coffee.",
  correct: false,
  question: question4
)

answer2 = Answer.create!(
  content: "I punch the person in the face.",
  correct: false,
  question: question4
)

answer3 = Answer.create!(
  content: "I give the person an evil look.",
  correct: false,
  question: question4
)

answer4 = Answer.create!(
  content: "I friendly say hello to the person.",
  correct: true,
  question: question4
)

# game 1 / social skills / project joy
answer5 = Answer.create!(
  content: "Scream and demand.",
  correct: false,
  question: question1
)
answer6 = Answer.create!(
  content: "Scream and whine.",
  correct: false,
  question: question1
)
answer7 = Answer.create!(
  content: "Explain and ask.",
  correct: true,
  question: question1
)
answer8 = Answer.create!(
  content: "Demand and ask.",
  correct: false,
  question: question1
)

# game 1 / social skills / demanding
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

# game 1 / social skills / lateral
answer13 = Answer.create!(
  content: "Clarity of approach",
  correct: true,
  question: question2
)

answer14 = Answer.create!(
  content: "Identify relevant players",
  correct: false,
  question: question2
)

answer15 = Answer.create!(
  content: "Relationship analysis",
  correct: false,
  question: question2
)

answer16 = Answer.create!(
  content: "Think about strategic options",
  correct: false,
  question: question2
)

# game 4 / self management /
answer17 = Answer.create!(
  content: "efficient and effective",
  correct: false,
  question: question13
)
answer18 = Answer.create!(
  content: "efficient but not effective",
  correct: true,
  question: question13
)
answer19 = Answer.create!(
  content: "effective but not efficient",
  correct: false,
  question: question13
)

answer20 = Answer.create!(
  content: "neither effective nor efficient",
  correct: false,
  question: question13
)

# game 4 / self management
answer21 = Answer.create!(
  content: "10%",
  correct: false,
  question: question14
)

answer22 = Answer.create!(
  content: "20%",
  correct: false,
  question: question14
)
answer23 = Answer.create!(
  content: "50%",
  correct: false,
  question: question14
)
answer24 = Answer.create!(
  content: "80%",
  correct: true,
  question: question14
)

# game 4 / self management
answer25 = Answer.create!(
  content: "Saying no to the hundred other good ideas that there are.",
  correct: true,
  question: question15
)
answer26 = Answer.create!(
  content: "Saying yes to the thing you’ve got to focus on.",
  correct: false,
  question: question15
)
answer27 = Answer.create!(
  content: "Eliminating projects that don’t contribute to the vision of the company.",
  correct: true,
  question: question15
)
# answer28 = Answer.create!(
#   content: "",
#   correct: false,
#   question: question15
# )

# # game 4 / self management
# answer29 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question16
# )

# answer30 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question16
# )

# answer31 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question16
# )
# answer32 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question16
# )

# game 7 / Corporate Culture
answer33 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question25
)
answer34 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question25
)
answer35 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question25
)
answer36 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: true,
  question: question25
)

# game 7 / corporate culture
answer37 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question26
)
answer38 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question26
)
answer39 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question26
)
answer40 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question26
)

# game 7 / corporate culture
answer41 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question27
)
answer42 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question27
)
answer43 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question27
)
answer44 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question27
)

# game 7 / corporate culture
answer45 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question28
)
answer46 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question28
)
answer47 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question28
)
answer48 = Answer.create!(
  content: " answer 1content content content content content content content content content ",
  correct: false,
  question: question28
)

# game 10 / expertise
answer49 = Answer.create!(
  content: "True. The proposal is consistent with the strict laws to deal
with drug traffickers.",
  correct: true,
  question: question37
)
answer50 = Answer.create!(
  content: "False. Certainly an innovative approach to avoid bribery, but
animals as guards ... ?!",
  correct: false,
  question: question37
)
# answer51 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question37
# )
# answer52 = Answer.create!(
#   content: " answer 1content content content content content content content content content ",
#   correct: false,
#   question: question37
# )

# game 10 / expertise
answer53 = Answer.create!(
  content: "The unlawful acquisition of money through coercion or threats.",
  correct: false,
  question: question38
)
answer54 = Answer.create!(
  content: "A threat to reveal damaging information unless a demand is met.",
  correct: true,
  question: question38
)
answer55 = Answer.create!(
  content: "When an official conceals illegal money in a black suitcase.",
  correct: false,
  question: question38
)
answer56 = Answer.create!(
  content: "An encrypted letter.",
  correct: false,
  question: question38
)

# game 10 / expertise
answer57 = Answer.create!(
  content: "The unlawful taking of someone's personal property.",
  correct: false,
  question: question39
)
answer58 = Answer.create!(
  content: "The abuse of personal power for personal gain.",
  correct: false,
  question: question39
)
answer59 = Answer.create!(
  content: "The abuse of entrusted power for personal gain.",
  correct: true,
  question: question39
)
answer60 = Answer.create!(
  content: "The ejection of molten lava, rocks and gas into the atmosphere.",
  correct: false,
  question: question39
)

# game 10 / expertise
answer61 = Answer.create!(
  content: "When someone has competing interests that influence their duties.",
  correct: true,
  question: question40
)
answer62 = Answer.create!(
  content: "When someone fights against corruption in their own company.",
  correct: false,
  question: question40
)
answer63 = Answer.create!(
  content: "When an employee reports misconduct and gets fired.",
  correct: false,
  question: question40
)
answer64 = Answer.create!(
  content: "When interest rates from different countries battle.",
  correct: false,
  question: question40
)

# game 2 / conflict handling
answer65 = Answer.create!(
  content: "The avoiding style",
  correct: false,
  question: question5
)
answer66 = Answer.create!(
  content: "The problem-solving style",
  correct: true,
  question: question5
)
answer67 = Answer.create!(
  content: "The bargaining style",
  correct: false,
  question: question5
)
answer68 = Answer.create!(
  content: "The smoothing style",
  correct: false,
  question: question5
)

answer69 = Answer.create!(
  content: "The avoiding style",
  correct: true,
  question: question6
)
answer70 = Answer.create!(
  content: "The problem-solving style",
  correct: false,
  question: question6
)
answer71 = Answer.create!(
  content: "The forcing style",
  correct: true,
  question: question6
)
answer72 = Answer.create!(
  content: "The bargaining style",
  correct: false,
  question: question6
)

answer73 = Answer.create!(
  content: "Assertively but diplomatically state your perspective",
  correct: false,
  question: question7
)
answer74 = Answer.create!(
  content: "Brainstorm possible solutions to the problem",
  correct: false,
  question: question7
)
answer75 = Answer.create!(
  content: "Slap some sense into them",
  correct: false,
  question: question7
)
answer76 = Answer.create!(
  content: "Listen to their perspective",
  correct: true,
  question: question7
)

answer77 = Answer.create!(
  content: "You need to arrive at a workable solution under time pressure.",
  correct: false,
  question: question8
)
answer78 = Answer.create!(
  content: "A creative solution is critical.",
  correct: true,
  question: question8
)
answer79 = Answer.create!(
  content: "Quick, decisive action is important.",
  correct: false,
  question: question8
)
answer80 = Answer.create!(
  content: "People need to work through their emotions surrounding the conflict.",
  correct: false,
  question: question8
)



puts 'Finished!'





