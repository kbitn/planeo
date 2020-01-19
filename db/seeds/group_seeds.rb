puts "Destroying groups..."

Group.destroy_all

puts "Creating groups..."


group1 = Group.new(
  name: "Le Wagon",
)
  group1.remote_photo_url = "https://archive.org/services/img/github.com-lewagon-dotfiles_-_2019-01-08_18-23-29"
  group1.administrator = User.find_by(name: "Fanny")
  group1.save

group2 = Group.new(
  name: "Family",
)
  group2.remote_photo_url = "https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/p960x960/38898967_10157029732994893_2867529920127434752_o.jpg?_nc_cat=108&_nc_oc=AQkjxC_RUSaDR8bThTqHyVC6qF4a_ARvd0D00LNnLlOkljyMbyac82QkpOYxX7G4g70&_nc_ht=scontent-mad1-1.xx&oh=379779a6b9d1bfe6b20d71d3a19077b4&oe=5E836A3E"
  group2.administrator = User.find_by(name: "Fanny")
  group2.save

group3 = Group.new(
  name: "Friends",
)
  group3.remote_photo_url = "https://d31fr2pwly4c4s.cloudfront.net/f/9/3/1206250_0_girls-night-out_400.jpg"
  group3.administrator = User.find_by(name: "Fanny")
  group3.save

group4 = Group.new(
  name: "Call of Duty",
)
  group4.remote_photo_url = "https://specials-images.forbesimg.com/imageserve/5ce8218fcd1f12000a2a49a4/960x0.jpg?fit=scale"
  group4.administrator = User.find_by(name: "Karim")
  group4.save

group5 = Group.new(
  name: "Female Coders",
)
  group5.remote_photo_url = "https://www.thecoderschool.com/wp-content/uploads/2019/02/iStock-939787416-1030x687.jpg"
  group5.administrator = User.find_by(name: "Ana")
  group5.save

group6 = Group.new(
  name: "Football",
)
  group6.remote_photo_url = "http://www.ox.ac.uk/sites/files/oxford/styles/ow_medium_feature/public/field/field_image_main/shutterstock_1396798973.jpg?itok=hA3LIyzv"
  group6.administrator = User.find_by(name: "Felipe")
  group6.save

puts "Groups created."
