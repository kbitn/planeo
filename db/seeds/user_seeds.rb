puts "Destroying users..."

User.destroy_all

puts "Creating users..."

# Le Wagon Users

karim = User.new(
  name: "Karim",
  email: "karim@lewagon.com",
  password: "123456",
)
karim.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg"
karim.save

felipe = User.new(
  name: "Felipe",
  email: "felipe@lewagon.com",
  password: "123456",
)
  felipe.remote_photo_url = "https://avatars3.githubusercontent.com/u/54073875?v=4"
  felipe.save

bitna = User.new(
  name: "Bitna",
  email: "bitna@lewagon.com",
  password: "123456",
)
  bitna.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg"
  bitna.save

fanny = User.new(
  name: "Fanny",
  email: "fanny@lewagon.com",
  password: "123456",
)
  fanny.remote_photo_url = "https://avatars2.githubusercontent.com/u/54022229?v=4"
  fanny.save

carol = User.new(
  name: "Carol",
  email: "carol@lewagon.com",
  password: "123456",
)
  carol.remote_photo_url = "https://avatars2.githubusercontent.com/u/55203965?v=4"
  carol.save

ana = User.new(
  name: "Ana",
  email: "ana@lewagon.com",
  password: "123456",
)
  ana.remote_photo_url = "https://avatars2.githubusercontent.com/u/2753447?v=4"
  ana.save

belen = User.new(
  name: "Belen",
  email: "belen@lewagon.com",
  password: "123456",
)
  belen.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/lnxfmia8mpojopc81tpv.jpg"
  belen.save

gabriela = User.new(
  name: "Gabriela",
  email: "gabriela@lewagon.com",
  password: "123456",
)
  gabriela.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  gabriela.save

herve = User.new(
  name: "Herve",
  email: "herve@lewagon.com",
  password: "123456",
)
  herve.remote_photo_url = "https://avatars1.githubusercontent.com/u/53608033?v=4"
  herve.save

maja = User.new(
  name: "Maja",
  email: "maja@lewagon.com",
  password: "123456",
)
  maja.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/xrrc7hws4zs0ewcvsenc.jpg"
  maja.save

javier = User.new(
  name: "Javier",
  email: "javier@lewagon.com",
  password: "123456",
)
  javier.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/mpjepc82amqtuo9xqlzm.jpg"
  javier.save

niklas = User.new(
  name: "Niklas",
  email: "niklas@lewagon.com",
  password: "123456",
)
  niklas.remote_photo_url = "https://avatars1.githubusercontent.com/u/55530252?v=4"
  niklas.save

gonzalo = User.new(
  name: "Gonzalo",
  email: "gonzalo@lewagon.com",
  password: "123456",
)
  gonzalo.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dkldu2lxom8jhdqn0ucd.jpg"
  gonzalo.save

martin = User.new(
  name: "Martin",
  email: "martin@lewagon.com",
  password: "123456",
)
  martin.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ssjktftgsdicvy1cersj.jpg"
  martin.save

ricardo = User.new(
  name: "Ricardo",
  email: "ricardo@lewagon.com",
  password: "123456",
)
  ricardo.remote_photo_url = "https://avatars0.githubusercontent.com/u/14589?v=4"
  ricardo.save


# Sisters Users

caroline = User.new(
  name: "Caroline",
  email: "caroline@lewagon.com",
  password: "123456",
)
  caroline.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/caroline_okkzzi.jpg"
  caroline.save

laure = User.new(
  name: "Laure",
  email: "laure@lewagon.com",
  password: "123456",
)
  laure.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678996/laure_qwlmvy.jpg"
  laure.save

delphine = User.new(
  name: "Delphine",
  email: "delphine@lewagon.com",
  password: "123456",
)
  delphine.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/delphine_qgqvjo.jpg"
  delphine.save

celine = User.new(
  name: "Celine",
  email: "celine@lewagon.com",
  password: "123456",
)
  celine.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/celine_jswohn.jpg"
  celine.save

# Girls Night Users

violetta = User.new(
  name: "Violetta",
  email: "violetta@lewagon.com",
  password: "123456",
)
  violetta.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678996/violetta_bncd4y.jpg"
  violetta.save

beatriz = User.new(
  name: "Beatriz",
  email: "beatriz@lewagon.com",
  password: "123456",
)
  beatriz.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/beatriz_zx8f2z.jpg"
  beatriz.save

isa = User.new(
  name: "Isa",
  email: "isa@lewagon.com",
  password: "123456",
)
  isa.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574680342/isa_square_ximpqu.jpg"
  isa.save

bea = User.new(
  name: "Bea",
  email: "bea@lewagon.com",
  password: "123456",
)
  bea.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/bea_c6grvl.jpg"
  bea.save

anita = User.new(
  name: "Anita",
  email: "anita@lewagon.com",
  password: "123456",
)
  anita.remote_photo_url = "https://res.cloudinary.com/dunhv8wwe/image/upload/v1574678995/anita_y8dggb.jpg"
  anita.save

puts "Users created."


















