# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Forest.delete_all
Trail.delete_all

forest1 = Forest.create(name: "Black forest", state: "Tamilnadu")
forest2 = Forest.create(name: "Olymbic national forest", state: "Pondy")

trail1 = Trail.create(name: "Section 16", miles: 4, forest: forest1)
trail2 = Trail.create(name: "Hall of moss", miles: 1, forest: forest2)