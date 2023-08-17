# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning db'
Category.destroy_all
Project.destroy_all
User.destroy_all

puts 'Creating users'

User.create!({ email: 'rodrigo@example.com', password: '123456' })

puts User.all
puts 'Finished!'
puts 'Creating Categories'

categories = [
  { name: 'Research', color: '#4848D3' },
  { name: 'Design', color: '#4848D3' },
  { name: 'Development', color: '#4848D3' },
  { name: 'Experiments', color: '#4848D3' }
]


categories.each do |category|
  category = Category.create!(category)
  puts "Created #{category.name}"
end

puts Category.all
puts 'Finished!'
puts 'Creating Projects'

projects = [
  { title: 'The Autonomous Web', subtitle: 'How can people self-govern their internet experience? How can they obtain autonomy from the internet while still being able to use it according to their needs?', info: 'Series of Publications, 2021 - 2022', picture: 'http://127.0.0.1:5500/assets/pics/projects/AW/aw1.jpg', size: 'large' },
  { title: 'Small Project', subtitle: 'Just some fancy subtitle.', info: 'Painting, 2021', picture: 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/tropical-annie-maxwell.jpg', size: 'small' },
  { title: 'Other Tiny Project', subtitle: 'I like turtles.', info: 'Sculpture, 2020', picture: 'https://m.media-amazon.com/images/I/81hnmJD59sL.jpg', size: 'small' },
  { title: 'An Ass', subtitle: 'A shapely butt for the conoisseurs.', info: 'Sculpture, 2020', picture: 'https://i.etsystatic.com/39756058/r/il/bccbe1/5163755216/il_fullxfull.5163755216_8rzm.jpg', size: 'small' },
  { title: 'Something Medium', subtitle: 'A medium sized Thomas the train. Truly avant-garde.', info: 'Train, 2019', picture: 'https://www.artmajeur.com/medias/standard/b/o/boules47/artwork/11754491_20e52abb-d243-4a7a-99a5-d8a02abc7801.jpg?v=1543955860', size: 'medium' },
]

projects.each do |project|
  project = Project.create!(project)
  puts "Created #{project.title}"
end

puts Project.all
puts 'Finished!'
