# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning db"
Category.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users"

categories = {
  { name: "All", color: "#4848D3" },
  { name: "Research", color: "#4848D3" },
  { name: "Design", color: "#4848D3" },
  { name: "Development", color: "#4848D3" },
  { name: "Experiments", color: "#4848D3" }
}
