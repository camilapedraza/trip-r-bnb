# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
puts "Cleaning Database"
Booking.destroy_all
Car.destroy_all
User.destroy_all

puts "Creating users"
fausto = User.new(email: "fausto@tripper.com", password: "fausto123")
fausto.photo.attach(io: File.open('app/assets/images/user_seeds/fausto.png'), filename: "fausto.png", content_type: "image/png")
fausto.save

alexis = User.new(email: "alexis@tripper.com", password: "alexis123")
alexis.photo.attach(io: File.open('app/assets/images/user_seeds/alexis.png'), filename: "alexis.png", content_type: "image/png")
alexis.save

gaetan = User.new(email: "gaetan@tripper.com", password: "gaetan123")
gaetan.photo.attach(io: File.open('app/assets/images/user_seeds/gaetan.png'), filename: "gaetan.png", content_type: "image/png")
gaetan.save

camila = User.new(email: "camila@tripper.com", password: "camila123")
camila.photo.attach(io: File.open('app/assets/images/user_seeds/camila.png'), filename: "camila.png", content_type: "image/png")
camila.save

admin = User.new(email: "admin@tripper.com", password: "admin123")
admin.admin = true
admin.save

puts "Creating cars"

car1 = Car.new(
  name: "Renault 4L 1983",
  description: "Berline, Essence, Mars/1983, 83000 Km, 4 portes avec hayon, Pneus neufs, Démarreur neuf",
  location: "Messancy, Belgique",
  price: 36,
  user: fausto
)
car1.photos.attach(io: File.open('app/assets/images/car_seeds/car1_1.png'), filename: "car1_1.png", content_type: "image/png")
car1.photos.attach(io: File.open('app/assets/images/car_seeds/car1_2.png'), filename: "car1_2.png", content_type: "image/png")
car1.photos.attach(io: File.open('app/assets/images/car_seeds/car1_3.png'), filename: "car1_3.png", content_type: "image/png")
car1.save

car2 = Car.new(
  name: "Renault 4L F6 Restauree",
  description: "Intérieur en contre plaqué avec isolation Armaflex. Pneus et périphériques (joint, guide, tableau de bord, feux, faisceau…).",
  location: "Paris (75013)",
  price: 76,
  user: alexis
)
car2.photos.attach(io: File.open('app/assets/images/car_seeds/car2_1.png'), filename: "car2_1.png", content_type: "image/png")
car2.photos.attach(io: File.open('app/assets/images/car_seeds/car2_2.png'), filename: "car2_2.png", content_type: "image/png")
car2.photos.attach(io: File.open('app/assets/images/car_seeds/car2_3.png'), filename: "car2_3.png", content_type: "image/png")
car2.save

car3 = Car.new(
  name: "Renault 4L F4 Renault service ",
  description: "4 jantes alpine turbo sur pneus comme neuf
  Démarre au quart. Batterie neuve. Roule bien.
  Entretien fait. Vidange filtre et batterie neuve nettoyage complet du circuit de refroidissement.. Attelage. Galerie super sympa.
  Châssis très sain. Carrosserie propre.",
  location: "Cagnes-sur-Mer (06800)",
  price: 45,
  user: gaetan
)
car3.photos.attach(io: File.open('app/assets/images/car_seeds/car3_1.png'), filename: "car3_1.png", content_type: "image/png")
car3.photos.attach(io: File.open('app/assets/images/car_seeds/car3_2.png'), filename: "car3_2.png", content_type: "image/png")
car3.photos.attach(io: File.open('app/assets/images/car_seeds/car3_3.png'), filename: "car3_3.png", content_type: "image/png")
car3.save

car4 = Car.new(
  name: "Renault 4L F4 trophy",
  description: "Nous avons fait le 4L Trophy 2023 avec ce véhicule, nous avons révisé le moteur : joint de culasse neuf, pompe à eau neuve, pompe à essence neuve, alternateur neuf, chaîne de distribution neuve, nettoyage du moteur effectué.
  Nous l'avons équipé des plaques de protections avant et arrière.",
  location: "Lannion (22300)",
  price: 105,
  user: camila
)
car4.photos.attach(io: File.open('app/assets/images/car_seeds/car4_1.png'), filename: "car4_1.png", content_type: "image/png")
car4.photos.attach(io: File.open('app/assets/images/car_seeds/car4_2.png'), filename: "car4_2.png", content_type: "image/png")
car4.photos.attach(io: File.open('app/assets/images/car_seeds/car4_3.png'), filename: "car4_3.png", content_type: "image/png")
car4.save

car5 = Car.new(
  name: "Renault 4 TL Savane",
  description: "contrôle technique,nombreux accessoires une jante, deux pneux, console centrale avec auto radio, vendue avec ou sans décoration en total covering",
  location: "Chauriat (63117)",
  price: 92,
  user: fausto
)
car5.photos.attach(io: File.open('app/assets/images/car_seeds/car5_1.png'), filename: "car5_1.png", content_type: "image/png")
car5.save

car6 = Car.new(
  name: "Renault 4 GTL Clan Trophy",
  description: "Renault 6 TL (6CV) *, Essence, Février/1975, 24000 Km , 4 portes. Très bon état.",
  location: "Genevreuille (70240)",
  price: 20,
  user: alexis
)
car6.photos.attach(io: File.open('app/assets/images/car_seeds/car6_1.png'), filename: "car6_1.png", content_type: "image/png")
car6.photos.attach(io: File.open('app/assets/images/car_seeds/car6_2.png'), filename: "car6_2.png", content_type: "image/png")
car6.save

car7 = Car.new(
  name: "Renault 4 TL Savane Bleue",
  description: "Sublime R4 TL modèle 1988 reconstruite à neuf (moteur refait en rodage, freins train AV et carrosserie refaits, intérieur sellerie moquette ciel de toit refaits aussi).",
  location: "Leuilly-sous-Coucy (02380)",
  price: 50,
  user: gaetan
)
car7.photos.attach(io: File.open('app/assets/images/car_seeds/car7_1.png'), filename: "car7_1.png", content_type: "image/png")
car7.photos.attach(io: File.open('app/assets/images/car_seeds/car7_2.png'), filename: "car7_2.png", content_type: "image/png")
car7.save

car8 = Car.new(
  name: "Renault 4 GTL Clan 1990",
  description: " Berline, Essence, Décembre/1990, 123 000 Km , 4 portes avec hayon, 9 000 €. entierement restauree histo avant limpide de 1ere main malaga",
  location: "Amboise (37400)",
  price: 99,
  user: camila
)
car8.photos.attach(io: File.open('app/assets/images/car_seeds/car8_1.png'), filename: "car8_1.png", content_type: "image/png")
car8.photos.attach(io: File.open('app/assets/images/car_seeds/car8_2.png'), filename: "car8_2.png", content_type: "image/png")
car8.photos.attach(io: File.open('app/assets/images/car_seeds/car8_3.png'), filename: "car8_3.png", content_type: "image/png")
car8.save

puts "Creating bookings"
Booking.create(
  car: car1,
  user: alexis,
  starting_date: DateTime.new(2023, 9, 1, 17),
  ending_date: DateTime.new(2023, 9, 3, 19)
)
Booking.create(
  car: car2,
  user: gaetan,
  starting_date: DateTime.new(2023, 8, 27, 12),
  ending_date: DateTime.new(2023, 8, 29, 12)
)
Booking.create(
  car: car3,
  user: camila,
  starting_date: DateTime.new(2023, 9, 13, 18),
  ending_date: DateTime.new(2023, 9, 20, 14)
)
Booking.create(
  car: car4,
  user: fausto,
  starting_date: DateTime.new(2023, 10, 3, 15),
  ending_date: DateTime.new(2023, 10, 7, 8)
)
Booking.create(
  car: car5,
  user: alexis,
  starting_date: DateTime.new(2023, 9, 2, 8),
  ending_date: DateTime.new(2023, 9, 2, 20)
)
Booking.create(
  car: car6,
  user: gaetan,
  starting_date: DateTime.new(2023, 9, 15, 10),
  ending_date: DateTime.new(2023, 9, 20, 16)
)
Booking.create(
  car: car7,
  user: camila,
  starting_date: DateTime.new(2023, 11, 3, 16),
  ending_date: DateTime.new(2023, 11, 17, 11)
)
Booking.create(
  car: car8,
  user: fausto,
  starting_date: DateTime.new(2023, 11, 7, 7),
  ending_date: DateTime.new(2023, 11, 17, 17)
)
Booking.create(
  car: car1,
  user: gaetan,
  starting_date: DateTime.new(2024, 9, 1, 17),
  ending_date: DateTime.new(2024, 9, 3, 19)
)
Booking.create(
  car: car2,
  user: camila,
  starting_date: DateTime.new(2024, 8, 27, 12),
  ending_date: DateTime.new(2024, 8, 29, 12)
)
Booking.create(
  car: car3,
  user: fausto,
  starting_date: DateTime.new(2024, 9, 13, 18),
  ending_date: DateTime.new(2024, 9, 20, 14)
)
Booking.create(
  car: car4,
  user: alexis,
  starting_date: DateTime.new(2023, 12, 3, 15),
  ending_date: DateTime.new(2023, 12, 7, 8)
)
Booking.create(
  car: car5,
  user: gaetan,
  starting_date: DateTime.new(2023, 11, 2, 8),
  ending_date: DateTime.new(2023, 11, 2, 20)
)
Booking.create(
  car: car6,
  user: camila,
  starting_date: DateTime.new(2023, 9, 15, 10),
  ending_date: DateTime.new(2023, 9, 20, 16)
)
Booking.create(
  car: car7,
  user: fausto,
  starting_date: DateTime.new(2023, 7, 3, 16),
  ending_date: DateTime.new(2023, 7, 17, 11)
)
Booking.create(
  car: car8,
  user: alexis,
  starting_date: DateTime.new(2023, 8, 7, 7),
  ending_date: DateTime.new(2023, 8, 17, 17)
)
