# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# add Product data

Product.delete_all
Product.create! id: 1, name: "Bannaa", price: 0.53, active: true, description: "!! Yellow 12 kela!!"
Product.create! id: 2, name: "Apple", price: 2.99, active: true, description: "!! Red Red Apple wa !!"
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true, description: "!! Yp yo carton wa !!"
Product.create! id: 4, name: "Grapes", price: 5.99, active: true, description: "Sweet wa"
Product.create! id: 5, name: "Sweet corn", price: 8.99, active: false,  description: "Sweet corn"
Product.create! id: 6, name: "Blakc Grapes", price: 5.99, active: false, description: "!! Black wa !!"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

