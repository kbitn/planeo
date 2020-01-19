require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'
require_relative './seeds/comment_seeds'

puts "Assigning users to groups..."

group1 = Group.find_by(name: "Le Wagon")
group2 = Group.find_by(name: "Family")
group3 = Group.find_by(name: "Friends")
group4 = Group.find_by(name: "Call of Duty")
group5 = Group.find_by(name: "Female Coders")
group6 = Group.find_by(name: "Football")

# Le Wagon Users
fanny = User.find_by(name: "Fanny")
karim = User.find_by(name: "Karim")
felipe = User.find_by(name: "Felipe")
bitna = User.find_by(name: "Bitna")
carol = User.find_by(name: "Carol")
ana = User.find_by(name: "Ana")
gabriela = User.find_by(name: "Gabriela")
belen = User.find_by(name: "Belen")
maja = User.find_by(name: "Maja")
herve = User.find_by(name: "Herve")
javier = User.find_by(name: "Javier")
niklas = User.find_by(name: "Niklas")
gonzalo = User.find_by(name: "Gonzalo")
martin = User.find_by(name: "Martin")
ricardo = User.find_by(name: "Ricardo")

# Family Users
caroline = User.find_by(name: "Caroline")
laure = User.find_by(name: "Laure")
delphine = User.find_by(name: "Delphine")
celine = User.find_by(name: "Celine")

# Friends Users
bea = User.find_by(name: "Bea")
beatriz = User.find_by(name: "Beatriz")
isa = User.find_by(name: "Isa")
violetta = User.find_by(name: "Violetta")
anita = User.find_by(name: "Anita")

# Felipe is not in Le Wagon - adding him at Demo Day

group1.users << [karim, bitna, fanny, carol, ana, gabriela, belen, maja, herve, niklas, javier, gonzalo, martin, ricardo]

group2.users << [caroline, laure, delphine, celine, fanny]

group3.users << [beatriz, isa, violetta, bea, anita, fanny]

group4.users << [karim, felipe, niklas, herve, javier, gonzalo, ricardo, martin]

group5.users << [bitna, carol, ana, gabriela, belen, maja]

group6.users << [karim, felipe, niklas, herve, javier]

puts "Seeds done!!!"





