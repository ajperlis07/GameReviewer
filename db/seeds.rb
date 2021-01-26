# THIS SEED FILE NEEDS TO BE ENTIRELY REPLACED -- I'M LEAVING CODE FOR YOUR REFERENCE ONLY!

User.destroy_all
VideoGame.destroy_all
VideoGameReview.destroy_all
User.reset_pk_sequence
VideoGame.reset_pk_sequence
VideoGameReview.reset_pk_sequence

andrew = User.create(name: "Andrew", console: "Computer")
bill = User.create(name: "Bill", console: "Xbox")
shane = User.create(name: "Shane", console: "Xbox")
james = User.create(name: "James", console: "Switch")
morgan = User.create(name: "Morgan", console: "Playstation")
wendy = User.create(name: "Wendy", console: "Switch")
aj = User.create(name: "AJ", console: "Xbox")
charles = User.create(name: "Charles", console: "Computer")
blake = User.create(name: "Blake", console: "Playstation")
joe = User.create(name: "Joe", console: "Xbox")

cod = VideoGame.create(title: "Call of Duty: MW", system: "Xbox", multiple_consoles: true)
gears = VideoGame.create(title: "Gears of War", system: "Xbox", multiple_consoles: true)
gow = VideoGame.create(title: "God of War", system: "Playstation", multiple_consoles: false)
spiderman = VideoGame.create(title: "Spiderman", system: "Playstation", multiple_consoles: false)
ror = VideoGame.create(title: "Risk of Rain 2", system: "Xbox", multiple_consoles: true)
amongus = VideoGame.create(title: "Among Us", system: "Computer", multiple_consoles: false)
hades = VideoGame.create(title: "Hades", system: "Switch", multiple_consoles: false)
smash = VideoGame.create(title: "Super Smash Bros.", system: "Switch", multiple_consoles: false)
bf4 = VideoGame.create(title: "Battlefield 4", system: "Computer", multiple_consoles: true)
halo = VideoGame.create(title: "Halo", system: "Xbox", multiple_consoles: true)
mariokart = VideoGame.create(title: "Mario Kart 8", system: "Switch", multiple_consoles: false)

VideoGameReview.create(user_id: andrew.id, video_game_id: amongus.id, video_game_rating: 7)
VideoGameReview.create(user_id: bill.id, video_game_id: halo.id, video_game_rating: 8)
VideoGameReview.create(user_id: aj.id, video_game_id: cod.id, video_game_rating: 9)
VideoGameReview.create(user_id: morgan.id, video_game_id: gow.id, video_game_rating: 4)
VideoGameReview.create(user_id: james.id, video_game_id: hades.id, video_game_rating: 10)
VideoGameReview.create(user_id: andrew.id, video_game_id: bf4.id, video_game_rating: 8)
VideoGameReview.create(user_id: james.id, video_game_id: mariokart.id, video_game_rating: 9)
VideoGameReview.create(user_id: joe.id, video_game_id: halo.id, video_game_rating: 5)
VideoGameReview.create(user_id: shane.id, video_game_id: gears.id, video_game_rating: 7)
VideoGameReview.create(user_id: blake.id, video_game_id: cod.id, video_game_rating: 6)







puts " 🕹 🕹 🕹 Ready Player One 🕹 🕹 🕹"