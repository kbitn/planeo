puts "Destroying comments..."

Comment.destroy_all

puts "Creating comments..."

comment1 = Comment.new(
  content: "No, Barcelona doesn't suck!",
  event: Event.find_by(name: "Real Madrid - Barcelona"),
  user: User.find_by(name: "Fanny")
)

puts "Comments created."
