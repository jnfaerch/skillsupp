puts "Creating a user"

Game.destroy_all
Competence.destroy_all
Question.destroy_all
User.destroy_all

u = User.create!(name: "test1", email: "test@test.com", password: "123456")
v = User.create!(name: "test2", email: "test2@test.com", password: "123456")
w = User.create!(name: "test3", email: "test3@test.com", password: "123456")



puts "Creating competences..."

competence1 =  Competence.create!(
  name: "Competence 1",
  description: "Majestic Events has been created for you to enjoy the best we have to offer."


)

competence2 = Competence.create!(
   name: "Competence 2",
description: "Majestic Events has been created for you to enjoy the best we have to offer."
)

competence13 = Competence.create!(
   name: "Competence 3",
  description: "Majestic Events has been created for you to enjoy the best we have to offer."
)

competence4 = Competence.create!(
  name: "Competence 4",
  description: "Majestic Events has been created for you to enjoy the best we have to offer."
)


puts "Creating games..."

game1 = Game.create!(
  name: "Game. 1",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence13
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
  competence: competence1
)

game6 = Game.create!(
  name: "Game. 6",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game7 = Game.create!(
  name: "Game. 7",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)

game8 = Game.create!(
  name: "Game. 8",
  description: "Majestic Events has been created for you to enjoy the best we have to offer.",
  competence: competence1
)


# Space.create!(
#   name: "Enjoy your event with flair",
#   description: "A highly modern atmosphere in the world of aviation awaits you in the Lufthansa training centre.",
#   address: "Hotel Sherlock, Dark Street, Birmingham, Great Britain",
#   capacity: 500,
#   price: 300,
#   user: v,
#   remote_photo_url: "https://www.protoura.com/media/img/galleries/event-locations/wien/5_3_Eventloc_VIE_12.jpg"
# )

puts 'Finished!'





