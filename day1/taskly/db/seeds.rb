# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# users = User.create([
#     {name: 'user1', email: 'user1@iron.com'},
#     {name: 'user2', email: 'user2@iron.com'},
#   ])


tasks = Task.create([
    {name: 'User1 task1', due_date: DateTime.now, user_id: User.first.id},
    {name: 'User1 task2', due_date: DateTime.now, user_id: User.first.id},
    {name: 'Userlast task1', due_date: DateTime.now, user_id: User.last.id},

  ])
