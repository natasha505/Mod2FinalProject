# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.delete_all
# User.reset_pk_sequence
# Movie.delete_all
# Movie.reset_pk_sequence
# MovActor.delete_all
# MovActor.reset_pk_sequence
# Actor.delete_all
# Actor.reset_pk_sequence
# Watchlist.delete_all
# Watchlist.reset_pk_sequence

natali = User.create(username: "natasha_505", name: "Natali", age: 29, bio: "I like long walks on the beach with my cat.", profile_pic: "https://scontent-sea1-1.xx.fbcdn.net/v/t31.0-8/26910109_10210626653651732_8497949884882666463_o.jpg?_nc_cat=110&_nc_ohc=AL_UGQEY_ugAQm9wnT5fluepwmoWwZYyFQZ6AdD6_x07Diwk9NQlFmXBw&_nc_ht=scontent-sea1-1.xx&oh=9d927c00e1d2f34892db1f4495499556&oe=5E9B505E")
lola = User.create(username: "l00000l", name: "Lolla Palolla", age: 22, bio: "Like oh my gosh! I just looooooove romantic comedies.", profile_pic: "app/assets/images/user-images/lolla-blonde.jpeg")
bob = User.create(username: "bob_da_builder", name: "Robert D. Builder", age: 37, bio: "Handyman at your service. HGTV & action movies all day, er' day", profile_pic: "app/assets/images/user-images/bob-the-builder.jpg")
rob = User.create(username: "movie_crit101", name: "Robert Q. Smythe", age: 35, bio: "A professional movie critic.", profile_pic: "app/assets/images/user-images/critic-rob.jpeg")

ff = Movie.create(title: "Fast & Furious", year: 2013, genre: "Action", plot: "Dominic Toretto is forced to come out of hiding when a loved one is brutally murdered.", poster: "https://m.media-amazon.com/images/M/MV5BMTM3NTg2NDQzOF5BMl5BanBnXkFtZTcwNjc2NzQzOQ@@._V1_.jpg") 
twilight = Movie.create(title: "Twilight", year: 2008, genre: "Romance", plot: " High-school student Bella Swan, always a bit of a misfit, doesn't expect life to change much when she moves from sunny Arizona to rainy Washington state.", poster: "app/assets/images/movie-pics/twilight.jpg") 
jumanji = Movie.create(title: "Jumanji: Welcome to the Jungle", year: 2017, genre: "Comedy", plot: "Four teens get sucked into the video game world of Jumanji and have to finish the dangerous game to escape.", poster: "app/assets/images/movie-pics/jumanji-welcome-to-the-jungle.jpg") 
upside = Movie.create(title: "The Upside", year: 2017, genre: "Comedy", plot: "A recently paroled ex-convict who strikes up an unlikely friendship with a paralyzed billionaire.", poster: "app/assets/images/movie-pics/the-upside.jpg") 
ci = Movie.create(title: "Central Intelligence", year: 2016, genre: "Action", plot: "Bullied as a teen for being overweight, Bob Stone shows up to his high school reunion looking fit and muscular.", poster: "app/assets/images/movie-pics/central-inteligence.jpg") 
cmarvel = Movie.create(title: "Captain Marvel", year: 2019, genre: "Action", plot: "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skrulls.", poster: "app/assets/images/movie-pics/captain-marvel.jpg") 
sleepover = Movie.create(title: "Sleepover", year: 2004, genre: "Romance", plot: "A teen girl’s sleepover turns into a madcap midnight scavenger hunt to win the prize of the popular kids’ high school lunch table and the boy of her dreams.", poster: "app/assets/images/movie-pics/the-sleepover.jpg") 
diehard = Movie.create(title: "Live Free or Die Hard", year: 2007, genre: "Action", plot: " As the nation prepares to celebrate Independence Day, veteran cop John McClane carries out another routine assignment: bringing in a computer hacker for questioning.", poster: "app/assets/images/movie-pics/live-free-or-die-hard.jpg") 
split = Movie.create(title: "Split", year: 2016, genre: "Horror", plot: "Though Kevin has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher, there remains one still submerged who is set to materialize and dominate all the others.", poster: "app/assets/images/movie-pics/split.jpg") 
xmen = Movie.create(title: "X-Men: First Class", year: 2011, genre: "Action", plot: "Before they became the worst of enemies, Charles Xavier and Erik Lehnsherr were the best of friends.", poster: "app/assets/images/movie-pics/x-men-first-class.jpg") 



paul = Actor.create(name: "Paul Waler", dob: "September 12, 1973", bio: "Was an American actor and philanthropist best known for his role as Brian O'Conner in The Fast and the Furious franchise.")
kristen = Actor.create(name: "Kristen Stewart", dob: "April 09, 1990", bio: "An American actress and director. Most famous for her role as Isabella Bella Swan in The TwilightSaga.")
the_rock = Actor.create(name: "Dwayne Johnson", dob: "May 02, 1972", bio:"Dwayne Douglas Johnson, also known by his ring name, The Rock, is an American-Canadian actor, producer, and retired professional wrestler.")
kevin = Actor.create(name: "Kevin Heart", dob: "July 06, 1979", bio: "Kevin Darnell Hart is an American stand-up comedian, actor, and producer.")
brie = Actor.create(name: "Brie Larson", dob: "October 01, 1989", bio: "An American actress and filmmaker. Noted for her supporting work in comedies when a teenager.")
alexa = Actor.create(name: "Alexa Vega", dob: "August 27, 1988", bio: "An American actress and singer. She is known for her role as Carmen Cortez in the Spy Kids film series.")
bruce = Actor.create(name: "Bruce Willis", dob: "March 19, 1955", bio: "Actor and musician Bruce Willis is well known for playing wisecracking or hard-edged characters, often in spectacular action films.")
james = Actor.create(name: "James McAvoy", dob: "April 02, 1979", bio: "A Scottish actor. He made his acting debut as a teen in The Near Room and made mostly television appearances.")

MovActor.create(movie_id: ff.id, actor_id: paul.id)
MovActor.create(movie_id: ff.id, actor_id: the_rock.id)
MovActor.create(movie_id: twilight.id, actor_id: kristen.id)
MovActor.create(movie_id: jumanji.id, actor_id: the_rock.id)
MovActor.create(movie_id: jumanji.id, actor_id: kevin.id)
MovActor.create(movie_id: upside.id, actor_id: kevin.id)
MovActor.create(movie_id: ci.id, actor_id: kevin.id)
MovActor.create(movie_id: ci.id, actor_id: the_rock.id)
MovActor.create(movie_id: cmarvel.id, actor_id: brie.id)
MovActor.create(movie_id: sleepover.id, actor_id: alexa.id)
MovActor.create(movie_id: diehard.id, actor_id: bruce.id)
MovActor.create(movie_id: split.id, actor_id: bruce.id)
MovActor.create(movie_id: split.id, actor_id: james.id)
MovActor.create(movie_id: xmen.id, actor_id: james.id)


Watchlist.create(user_id: natali.id, movie_id: ff.id, rating: 9, review: "It was good but not as good as the OG.")
Watchlist.create(user_id: natali.id, movie_id: twilight.id, rating: 5, review: "Did not really like. Can Kristen Steward really act, on emotion, meh")
Watchlist.create(user_id: natali.id, movie_id: jumanji.id, rating: 10, review: "Heeeeeeeeeecka funny! Def recommend.")
Watchlist.create(user_id: natali.id, movie_id: diehard, rating: 10, review: "Yippie Ki Yay! One of my faves. Rewatch it at least twice per year. Love Bruce Willis.")
Watchlist.create(user_id: natali.id, movie_id: split.id, rating: 5, review: "It's really good but I would NOT watch this again. Pretty creepy. Sorry Bruce, I love you but...")
Watchlist.create(user_id: natali.id, movie_id: upside.id, rating: 9, review: "Very touching movie. Kevin Hart is a good clown. Malcom in the Middle dad makes a pretty good guadriplegic.")
Watchlist.create(user_id: natali.id, movie_id: sleepover.id, rating: 8, review: "It was not bad. Chick flick when you're home alone.")
Watchlist.create(user_id: lola.id, movie_id: sleepover.id, rating: 10, review: "Looooooooove it! It's like my favorite. The hunky guy with the beauty mark by his lip if fiiiiiiiine, mhm. I like love it so much.")
Watchlist.create(user_id: lola.id, movie_id: cmarvel.id, rating: 9, review: "Like oh ma gosh, Captain Marvel is so ficken sexy. I like wanna be her when I grow up.")
Watchlist.create(user_id: bob.id, movie_id: ci.id, rating: 7, review: "It was good but not good enough for a 10/10.")
Watchlist.create(user_id: bob.id, movie_id: jumanji.id, rating: 8, review: "Good movie but honestly, Dwayne Johnson isn't natural. Believe me, I would know.")
Watchlist.create(user_id: bob.id, movie_id: diehard.id, rating: 10, review: "10/10, Hands down best movie ever. 3 thumbs up.")
Watchlist.create(user_id: rob.id, movie_id: xmen.id, rating: 6, review: "Is 'X-Men: First Class' the disaster a lot of fans predicted, or the surprise hit of the summer?")
Watchlist.create(user_id: rob.id, movie_id: ff.id, rating: 2, review: "Welcome back to the ever-expanding world of the Fast and the Furious, where family comes first, physics comes a distant second, and logic blew a flat tire like three movies ago.")
Watchlist.create(user_id: rob.id, movie_id: twilight.id, rating: 4, review: "What I most resent about the world of Twilight, apart from the perfectly good hours it's thieved from my precious, finite life, is the drawing of the vampire's teeth. The dismal heroine — a clumsy, selfish nincompoop with the charisma of a boiled potato — is left to make all the sexual running, while her demon lover persists in behaving like a perfect little gentleman, the chivalric hero of a bygone era.")
Watchlist.create(user_id: rob.id, movie_id: cmarvel.id, rating: 2, review: "Not a good film. Misplaced, miscast and mis directed. The script is the real villian of the movie. Its dreadful and without tension. A complete lack of good story arc. The main character lacks any development.")





