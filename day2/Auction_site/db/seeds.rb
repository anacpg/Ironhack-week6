# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



users = User.create([{name:'Ana', email: 'ana@email.com'},
  {name:'Ramiro', email: 'ramiro@email.com'},
  {name:'Javi', email: 'javi@email.com'}])


products = Product.create([
  {title:'Canon g7 x', description: 'camara compacta', deadline: Date.today, user_id: 1},
  {title:'Macbook pro', description: 'Macbook pro 15"', deadline: Date.today - 23.day, user_id: 1},
  {title:'PSP', description: 'PSP lite', deadline: Date.today - 3.month - 2.day, user_id: 3},
  ])
