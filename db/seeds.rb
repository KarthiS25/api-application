# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Garden.delete_all
Trail.delete_all

garden1 = Garden.create(name: "Black garden", state: "Tamilnadu")
garden2 = Garden.create(name: "Olymbic national garden", state: "Pondy")

trail1 = Trail.create(name: "Section 16", miles: 4, garden: garden1)
trail2 = Trail.create(name: "Hall of moss", miles: 1, garden: garden2)