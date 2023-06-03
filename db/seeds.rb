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
puts "Creating owners"
fausto_owner = User.create(email:"fausto-owner@tripper.com", password:"fausto123")
alexis_owner = User.create(email:"alexis-owner@tripper.com", password:"alexis123")
gaetan_owner = User.create(email:"gaetan-owner@tripper.com", password:"gaetan123")
camila_owner = User.create(email:"camila-owner@tripper.com", password:"camila123")
puts "Creating renters"
fausto_renter = User.create(email:"fausto-renter@tripper.com", password:"fausto123")
alexis_renter = User.create(email:"alexis-renter@tripper.com", password:"alexis123")
gaetan_renter = User.create(email:"gaetan-renter@tripper.com", password:"gaetan123")
camila_renter = User.create(email:"camila-renter@tripper.com", password:"camila123")
puts "Creating cars"
car1 = Car.create(
  name: "Renault 4L 1983",
  description: "Berline, Essence, Mars/1983, 83000 Km, 4 portes avec hayon, Pneus neufs, Démarreur neuf",
  location: "Messancy, Belgique",
  price: 36,
  user: fausto_owner
)
car2 = Car.create(
  name: "Renault 4 (4 CV)",
  description: "Berline, Essence, Juillet/1985, 146 000 Km , 4 portes avec hayon",
  location: "Paris (75013)",
  price: 76,
  user: alexis_owner
)
car3 = Car.create(
  name: "4L en Bel Etat",
  description: "Vend Renault 4L GTL TRÈS BONNE ÉTAT, pas de corrosion, dernier travaux effectués (démarreur, pompe à essence, filtre à essence, bougies, vis platiné)",
  location: "Cagnes-sur-Mer (06800)",
  price: 45,
  user: gaetan_owner
)
car4 = Car.create(
  name: "Renault 4",
  description: "Renault 4 (4 CV) *, Berline, Essence, Mars/1986, 4 portes avec hayon",
  location: "Lannion (22300)",
  price: 105,
  user: camila_owner
)
car5 = Car.create(
  name: "Renault 4 TL Savane",
  description: "contrôle technique,nombreux accessoires une jante, deux pneux, console centrale avec auto radio, vendue avec ou sans décoration en total covering",
  location: "Chauriat (63117)",
  price: 92,
  user: fausto_owner
)
car6 = Car.create(
  name: "Renault 4 GTL Clan",
  description: "Renault 6 TL (6CV) *, Essence, Février/1975, 24000 Km , 4 portes. Très bon état.",
  location: "Genevreuille (70240)",
  price: 20,
  user: alexis_owner
)
car7 = Car.create(
  name: "Renault 4 TL Savane Bleue",
  description: "Sublime R4 TL modèle 1988 reconstruite à neuf (moteur refait en rodage, freins train AV et carrosserie refaits, intérieur sellerie moquette ciel de toit refaits aussi).",
  location: "Leuilly-sous-Coucy (02380)",
  price: 50,
  user: gaetan_owner
)
car8 = Car.create(
  name: "Renault 4 GTL Clan 1990",
  description: " Berline, Essence, Décembre/1990, 123 000 Km , 4 portes avec hayon, 9 000 €. entierement restauree histo avant limpide de 1ere main malaga",
  location: "Amboise (37400)",
  price: 99,
  user: camila_owner
)
puts "Creating bookings"
Booking.create(
  car: car1,
  user: alexis_renter,
  starting_date: DateTime.new(2023, 9, 1, 17),
  ending_date: DateTime.new(2023, 9, 3, 19)
)
Booking.create(
  car: car2,
  user: gaetan_renter,
  starting_date: DateTime.new(2023, 8, 27, 12),
  ending_date: DateTime.new(2023, 8, 29, 12)
)
Booking.create(
  car: car3,
  user: camila_renter,
  starting_date: DateTime.new(2023, 9, 13, 18),
  ending_date: DateTime.new(2023, 9, 20, 14)
)
Booking.create(
  car: car4,
  user: fausto_renter,
  starting_date: DateTime.new(2023, 10, 3, 15),
  ending_date: DateTime.new(2023, 10, 7, 8)
)
Booking.create(
  car: car5,
  user: alexis_renter,
  starting_date: DateTime.new(2023, 9, 2, 8),
  ending_date: DateTime.new(2023, 9, 2, 20)
)
Booking.create(
  car: car6,
  user: gaetan_renter,
  starting_date: DateTime.new(2023, 9, 15, 10),
  ending_date: DateTime.new(2023, 9, 20, 16)
)
Booking.create(
  car: car7,
  user: camila_renter,
  starting_date: DateTime.new(2023, 11, 3, 16),
  ending_date: DateTime.new(2023, 11, 17, 11)
)
Booking.create(
  car: car8,
  user: fausto_renter,
  starting_date: DateTime.new(2023, 11, 7, 7),
  ending_date: DateTime.new(2023, 11, 17, 17)
)
