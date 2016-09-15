# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sandwiches = Sandwich.create([
    {name: 'pecado carnal' , bread_type:'mollete' },
    {name: 'vegetal' , bread_type:'integral' },
    {name: 'mediterraneo' , bread_type:'normal' }
  ])

ingredients = Ingredient.create([
    {name: 'atun', calories: 50},
    {name: 'tomato', calories: 25},
    {name: 'cheese', calories: 100}

  ])
