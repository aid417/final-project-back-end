# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {name: "test", user_name: "test", email: "test@test.com", password: "test"},
    {name: "test", user_name: "test", email: "test@test.com", password: "test"},
    {name: "test", user_name: "test", email: "test@test.com", password: "test"}
])

Article.create([
    {title: "test", description:"test" , url:"test", image:"test", author:"test", user_id: 1},
    {title: "test", description:"test" , url:"test", image:"test", author:"test", user_id: 2},
    {title: "test", description:"test" , url:"test", image:"test", author:"test", user_id: 3}
])
Category.create([
    {name: "business"},
    {name: "entertainment"},
    {name: "sports"},
    {name: "health"},
    {name: "science"},
    {name: "technology"}
])
Merge.create([
    {category_id: 1, user_id: 1},
    {category_id: 2, user_id: 2},
    {category_id: 3, user_id: 3}
])

