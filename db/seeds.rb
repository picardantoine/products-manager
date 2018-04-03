# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Price...'
Price.destroy_all

puts 'Cleaning Stock...'
Stock.destroy_all

puts 'Cleaning User...'
User.destroy_all

puts 'Cleaning Product...'
Product.destroy_all

puts 'Creating users...'
User.create(username:"Antoine")
User.create(username:"Lancelot")

puts 'Creating products...'
Product.create(name:"Nike Air Force")
Product.create(name:"Adidas Stan Smith")

puts 'Creating stocks...'
Stock.create(user_id:User.find_by(username:"Antoine").id, product_id:Product.find_by(name:"Nike Air Force").id)
Stock.create(user_id:User.find_by(username:"Antoine").id, product_id:Product.find_by(name:"Adidas Stan Smith").id)

puts 'Creating prices...'
Price.create(product_id:Product.find_by(name:"Nike Air Force").id, currency:"Eur", value:"40")
Price.create(product_id:Product.find_by(name:"Nike Air Force").id, currency:"Dollars", value:"49")
