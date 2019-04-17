# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Subjects
physics = Subject.create(name: "Physics")
calculus = Subject.create(name: "Calculus")
chemistry = Subject.create(name: "Chemistry")
political_science = Subject.create(name: "Political Science")
artificial_intelligence = Subject.create(name: "Artificial Intelligence")
biochemistry = Subject.create(name: "Biochemistry")
history = Subject.create(name: "History")
art = Subject.create(name: "Art")
discrete_math = Subject.create(name: "Discrete Math")
biology = Subject.create(name: "Biology")

 10.times do
     Users.create(
         email: Faker::Internet.email,
         first_name: Faker::Name.first_name,
         last_name: Faker::Name.last_name,
         role:
         profile: Faker::Lorem.sentences,

#     )

# Users (Tutors)
jill = User.create(first_name: "Jill", last_name: "Valentine", bio: "I love to teach discrete math. It's one of the most amazing subjects")
tom = User.create(first_name: "Tom", last_name: "Cruise", bio: "I was formely one of the greatest actors, but I found my passion in Chemistry")
malik = User.create(first_name: "Malik", last_name: "Siddiqi", bio: "My name is Malik Siddiqi and I love teach history.")
james = User.create(first_name: "James", last_name: "Bond", bio: "The worlds best spy, now teaching and mastering the art of artificial intelligence")
kim = User.create(first_name: "Kim", last_name: "Bradford", bio: "I love teaching biology, since I have a PhD")
john = User.create(first_name: "John", last_name: "Cena", bio: "You can't see me, but I teach physics")
scott = User.create(first_name: "Scott", last_name: "Thompson", bio: "My favorite subject is calculus, since I'm a descendent of Newton")
trump = User.create(first_name: "Donald", last_name: "Trump", bio: "I can't teach political science, because I'm into real estate. Ask me again, and you're fired!")
kovacs = User.create(first_name: "Takeshi", last_name: "Kovacs", bio: "I'm from the feature, but I can teach biochemistry")
ryan = User.create(first_name: "Ryan", last_name: "Reynolds", bio: "I'm in the new Pokemon movie, but I can teach you something about art")
