# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = Player.create([
  {name: 'Pepe'},
  {name: 'Manu'},
  {name: 'Luisa'},
  {name: 'Maria'}
  ])

tournaments = Tournament.create([
    {name: 'tour1'},
    {name: 'tour2'},
    {name: 'tour3'},
    {name: 'tour4'},

  ])
