# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(id: 1, title: "Mobile", description: "A mobile device is a small, handheld computing device, typically having a display screen with touch input and/or a miniature keyboard and weighing less than 2 pounds")
Category.create(id: 2, title: "Toys", description: "an object for a child to play with, typically a model or miniature replica of something.")
Post.create(id: 1, title: "Nokia E51", description: "Nokia E51 is one of the leaner enterprise devices from the Finnish .... like the media player, N-Gage games, to the forefront. Nokia E90 is equipped with Bluetooth, Wi-Fi, and GPS, and has a solid set of productivity and communication", image: "string", price: 4325, order: 1)
Post.create(id: 2, title: " Nokia N73", description: "All those features are enough to make it a worthy successor of the highly popular and capable Nokia N73", image: "string", price: 4325, order: 1)
CategoryPost.create(id: 1, category_id: 1, post_id: 1)
CategoryPost.create(id: 2, category_id: 1, post_id: 2)

