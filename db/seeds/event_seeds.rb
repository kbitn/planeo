puts "Destroying events..."

Event.destroy_all

puts "Creating events..."

event1 = Event.new(
  name: "Formula 1 in Monaco",
  state: "proposed",
  address: "Circuit de Monaco",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Felipe")
)
event1.remote_photo_url = "https://robbreportedit.files.wordpress.com/2019/11/slotcar03.jpg?w=1000&h=562"
event1.save

event2 = Event.create!(
  name: "Real Madrid - Barcelona",
  state: "organized",
  address: "Av. de Concha Espina, 1, 28036 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Karim"),
  description: "Barcelona sucks."
)
  event2.remote_photo_url = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/12/23/10/messi-marcelo.jpg?w968h681"
  event2.event_dates << EventDate.new(date: Date.strptime('12/03/2020', '%m/%d/%Y'))
  event2.time = "20:00"
  event2.save

event3 = Event.create!(
  name: "Drinks at Mariana's",
  state: "organized",
  address: "Calle de Juan de Mariana, 14, 28045 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Carol"),
  description: "Una caña por favor!"
)
  event3.remote_photo_url = "https://ep01.epimg.net/elviajero/imagenes/2017/06/05/actualidad/1496661055_237522_1496665028_sumario_normal.jpg"
  event3.event_dates << EventDate.new(date: Date.strptime('11/30/2019', '%m/%d/%Y'))
  event3.event_dates << EventDate.new(date: Date.strptime('12/01/2019', '%m/%d/%Y'))
  event3.time = "18:00"
  event3.save

event4 = Event.create!(
  name: "Lunch at Goiko",
  state: "proposed",
  address: "Calle del Prado, 15, 28014 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Fanny")
)
  event4.remote_photo_url = "https://www.goikogrill.com/wp-content/uploads/2017/03/GOIKO_GRILL_WEB-10.jpg"
  event4.save

event5 = Event.create!(
  name: "Chocolate con churros",
  state: "proposed",
  address: "Pasadizo de San Ginés, 5, 28013 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Bitna")
)
  event5.remote_photo_url = "https://cocina-casera.com/mx/wp-content/uploads/2017/11/churros.jpg"
  event5.save

event6 = Event.create!(
  name: "Museo del Prado",
  state: "organized",
  address: "Calle de Ruiz de Alarcón, 23, 28014 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Herve"),
  description: "Un peu de culture, svp!"
)
  event6.remote_photo_url = "https://www.elsoldemexico.com.mx/cultura/arte/48j2v7-museo-del-prado.jpg/alternates/LANDSCAPE_400/museo del prado.jpg"
  event6.event_dates << EventDate.new(date: Date.strptime('11/30/2019', '%m/%d/%Y'))
  event6.event_dates << EventDate.new(date: Date.strptime('12/01/2019', '%m/%d/%Y'))
  event6.time = "11:00"
  event6.save

event7 = Event.create!(
  name: "Party at Ana's",
  state: "proposed",
  address: "Calle de El Españoleto, 2, 28010 Madrid",
  group: Group.find_by(name: "Le Wagon"),
  organizer: User.find_by(name: "Ana")
)
  event7.remote_photo_url = "https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/03-9.jpg"
  event7.save

event8 = Event.create!(
  name: "Dinner at La Mamona",
  state: "organized",
  address: "Calle de Ponzano, 7, 28010 Madrid",
  group: Group.find_by(name: "Friends"),
  organizer: User.find_by(name: "Beatriz"),
  description: "Cheesecake cheesecake cheesecake"
)
  event8.remote_photo_url = "https://media-cdn.tripadvisor.com/media/photo-s/16/c7/6b/fc/sala.jpg"
  event8.event_dates << EventDate.new(date: Date.strptime('12/05/2019', '%m/%d/%Y'))
  event8.event_dates << EventDate.new(date: Date.strptime('12/06/2019', '%m/%d/%Y'))
  event8.time = "21:00"
  event8.save

event9 = Event.create!(
  name: "Drinks at Teje Maneje",
  state: "organized",
  address: "Calle de Ponzano, 14, 28010 Madrid",
  group: Group.find_by(name: "Friends"),
  organizer: User.find_by(name: "Fanny"),
  description: "Teje Y MANEJEEEE"
)
  event9.remote_photo_url = "https://media-cdn.tripadvisor.com/media/photo-s/15/9f/88/a6/barra.jpg"
  event9.event_dates << EventDate.new(date: Date.strptime('12/07/2019', '%m/%d/%Y'))
  event9.time = "22:30"
  event9.save

event10 = Event.create!(
  name: "Wine Tasting",
  state: "proposed",
  address: "TBD",
  group: Group.find_by(name: "Friends"),
  organizer: User.find_by(name: "Violetta")
)
  event10.remote_photo_url = "https://www.societyaberdeen.co.uk/wp-content/uploads/sites/105/2019/02/wine-tasting.jpg"
  event10.save

event11 = Event.create!(
  name: "Hiking in Sepulveda",
  state: "organized",
  address: "Sepulveda",
  group: Group.find_by(name: "Friends"),
  organizer: User.find_by(name: "Isa")
)
  event11.remote_photo_url = "http://www.elrincondeltrotamundos.com/wp-content/uploads/2013/10/Hoces-del-Duratón.-Segovia_0017.jpg"
  event11.event_dates << EventDate.new(date: Date.strptime('12/14/2019', '%m/%d/%Y'))
  event11.event_dates << EventDate.new(date: Date.strptime('12/21/2019', '%m/%d/%Y'))
  event11.time = "10:00"
  event11.save

event12 = Event.create!(
  name: "WE in Paris",
  state: "organized",
  address: "Paris",
  group: Group.find_by(name: "Family"),
  organizer: User.find_by(name: "Laure"),
  description: "Paris is always a good idea!"
)
  event12.remote_photo_url = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/08/07/08/paris.jpg?w968h681"
  event12.event_dates << EventDate.new(date: Date.strptime('01/18/2020', '%m/%d/%Y'))
  event12.event_dates << EventDate.new(date: Date.strptime('01/25/2020', '%m/%d/%Y'))
  event12.time = "10:00"
  event12.save

event13 = Event.create!(
  name: "Easter WE in Le Croisic",
  state: "organized",
  address: "Le Croisic",
  group: Group.find_by(name: "Family"),
  organizer: User.find_by(name: "Fanny")
)
  event13.remote_photo_url = "https://www.tourismebretagne.com/app/uploads/crt-bretagne/2018/10/1-le-croisic-le-port-y-le-gal-1200x675.jpg"
  event13.event_dates << EventDate.new(date: Date.strptime('03/21/2020', '%m/%d/%Y'))
  event13.event_dates << EventDate.new(date: Date.strptime('03/28/2020', '%m/%d/%Y'))
  event13.time = "10:00"
  event13.save

event14 = Event.create!(
  name: "Team Death Match",
  state: "organized",
  address: "Talent Garden",
  group: Group.find_by(name: "Call of Duty"),
  organizer: User.find_by(name: "Karim")
)
  event14.remote_photo_url = "https://i.gadgets360cdn.com/large/cod_mobile_main_1570103396815.jpg"
  event14.event_dates << EventDate.new(date: Date.strptime('12/22/2020', '%m/%d/%Y'))
  event14.time = "22:00"
  event14.save

event15 = Event.create!(
  name: "WonderWomen Tech Conf.",
  state: "organized",
  address: "Long Beach, California",
  group: Group.find_by(name: "Female Coders"),
  organizer: User.find_by(name: "Bitna")
)
  event15.remote_photo_url = "https://s3-us-west-2.amazonaws.com/issuewireassets/primg/4968/join-europes-largest-women-in-tech-conference-european-women-in-technology-201875.jpg"
  event15.event_dates << EventDate.new(date: Date.strptime('02/22/2020', '%m/%d/%Y'))
  event15.time = "11:00"
  event15.save

puts "Events created."




