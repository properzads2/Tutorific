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

# 10.times do
#     Users.create(
#         email: Faker::Internet.email,
#         first_name: Faker::Name.first_name,
#         last_name: Faker.Name.last_name,
#         category: 

#     )

# Tutors
jill = Tutor.create(first_name: "Jill", last_name: "Valentine", bio: "I love to teach discrete math. It's one of the most amazing subjects")
tom = Tutor.create(first_name: "Tom", last_name: "Cruise", bio: "I was formely one of the greatest actors, but I found my passion in Chemistry")
jack = Tutor.create(first_name: "Jack", last_name: "Ryan", bio: "My name is Jack Ryan and I love teach history.")
james = Tutor.create(first_name: "James", last_name: "Bond", bio: "The worlds best spy, now teaching and mastering the art of artificial intelligence")
kim = Tutor.create(first_name: "Kim", last_name: "Bradford", bio: "I love teaching biology, since I have a PhD")
john = Tutor.create(first_name: "John", last_name: "Cena", bio: "You can't see me, but I teach physics")
scott = Tutor.create(first_name: "Scott", last_name: "Thompson", bio: "My favorite subject is calculus, since I'm a descendent of Newton")
trump = Tutor.create(first_name: "Donald", last_name: "Trump", bio: "I can't teach political science, because I'm into real estate. Ask me again, and you're fired!")  
kovacs = Tutor.create(first_name: "Takeshi", last_name: "Kovacs", bio: "I'm from the feature, but I can teach biochemistry")
ryan = Tutor.create(first_name: "Ryan", last_name: "Reynolds", bio: "I'm in the new Pokemon movie, but I can teach you something about art")


# Tutor_Subjects
ts_1 = Tutor_Subject.create(tutor_id: jill.id, subject_id: discrete_math.id)
ts_2 = Tutor_Subject.create(tutor_id: tom.id, subject_id: chemistry.id)
ts_3 = Tutor_Subject.create(tutor_id: jack.id, subject_id: history.id)
ts_4 = Tutor_Subject.create(tutor_id: james.id, subject_id: artificial_intelligence.id)
ts_5 = Tutor_Subject.create(tutor_id: kim.id, subject_id: biology.id)
ts_6 = Tutor_Subject.create(tutor_id: john.id, subject_id: physics.id)
ts_7 = Tutor_Subject.create(tutor_id: scott.id, subject_id: calculus.id)
ts_8 = Tutor_Subject.create(tutor_id: trump.id, subject_id: political_science.id)
ts_9 = Tutor_Subject.create(tutor_id: kovacs.id, subject_id: biochemistry.id)
ts_10 = Tutor_Subject.create(tutor_id: ryan.id, subject_id: art.id)

#Student_Tutors
st_1 = Student_Tutor.create(tutor_subject_id: ts_1.id, student_id: keanu.id, status: "Requested")
st_2 = Student_Tutor.create(tutor_subject_id: ts_2.id, student_id: jack.id, status: "Current")
st_3 = Student_Tutor.create(tutor_subject_id: ts_3.id, student_id: kevin.id, status: "Completed")
st_4 = Student_Tutor.create(tutor_subject_id: ts_4.id, student_id: henry.id, status: "Requested")
st_5 = Student_Tutor.create(tutor_subject_id: ts_5.id, student_id: tim.id, status: "Current")
st_6 = Student_Tutor.create(tutor_subject_id: ts_6.id, student_id: sam.id, status: "Completed")
st_7 = Student_Tutor.create(tutor_subject_id: ts_7.id, student_id: thomas.id, status: "Requested")
st_8 = Student_Tutor.create(tutor_subject_id: ts_8.id, student_id: peter.id, status: "Current")
st_9 = Student_Tutor.create(tutor_subject_id: ts_9.id, student_id: micheal.id, status: "Completed")
st_10 = Student_Tutor.create(tutor_subject_id: ts_10.id, student_id: joel.id, status: "Requested")

#Reviews
review_1 = Review.create(student_tutor_id: st_1.id, rating: 9, comments: "Jill was a very good instructor, because she explained difficult discrete math concepts clearly")
review_2 = Review.create(student_tutor_id: st_2.id, rating: 10, comments: "Tom is an expert is chemistry")
review_3 = Review.create(student_tutor_id: st_3.id, rating: 7, comments: "Jack is good at explaining some historical concepts, but not others")
review_4 = Review.create(student_tutor_id: st_4.id, rating: 4, comments: "I understand this class is hard, but the teacher should be more knowledgeable in this area")
review_5 = Review.create(student_tutor_id: st_5.id, rating: 1, comments: "Kim doesn't care about teaching, or helping other students to seem a tiny bit interested in biology")
review_6 = Review.create(student_tutor_id: st_6.id, rating: 6, comments: "John can break down complex physics topics, but has a hard time organizing information")
review_7 = Review.create(student_tutor_id: st_7.id, rating: 3, comments: "Scott made a lot of mistakes when trying to teach us derivatives and graph theory. We had to correct him all the time")
review_8 = Review.create(student_tutor_id: st_8.id, rating: 5, comments: "Trump has some anger issues that need some working out, but he's trying his best to teach the subject")
review_9 = Review.create(student_tutor_id: st_9.id, rating: 8, comments: "This guy is amazing, and he loves teaching biochemistry, and tells us stories about the future")
review_10 = Review.create(student_tutor_id: st_10.id, rating: 2, comments: "Ryan was laid back. I mean very laid back. He told us to draw anything we wanted and did not follow the syllabus most of the time!")

#Students
sam = Student.create(first_name: "Samidh", last_name: "Patel", bio: "Student at Flatiron School. Loves studying physics")
thomas = Student.create(first_name: "Thomas", last_name: "Prescott", bio: "Born and raised in the UK. Now living in the US and studying calculus")
jack = Student.create(first_name: "Jack", last_name: "Daniel", bio: "Not named after the whiskey. I promise! Loves learning about chemistry")
peter = Student.create(first_name: "Peter", last_name: "Parker", bio: "With great power, comes great responsbility. I want to be a political scientist, one day")
henry = Student.create(first_name: "Henry", last_name: "Lassiter", bio: "I love learning about artificial intelligence, and I hope to create self sufficient AI in the near future")
micheal = Student.create(first_name: "Micheal", last_name: "Scott", bio: "Best boss at Dunder Mifflin. Interested in biochemistry.")
kevin = Student.create(first_name: "Chuck", last_name: "Norris", bio: "I have many jokes about myself that are definitely true. Loves studying history")
joel = Student.create(first_name: "Joel", last_name: "Kinnaman", bio: "Art is about showing people the world they were never meant to see. Art is great")
keanu = Student.create(first_name: "Keanu", last_name: "Reeves", bio: "The nicest human being you will ever know. Discrete math is my favorite")
tim = Student.create(first_name: "Tim", last_name: "Rogers", bio: "I like to learn about biology and about living organisms")