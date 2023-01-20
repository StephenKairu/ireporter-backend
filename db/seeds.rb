# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(
    username: "janesmith",
    email: "jane@gmail.com",
    role: 'citizen',
    password: "Jane",
    password_confirmation: "Jane"
)

User.create!(
    username: "johndoe",
    email: "johndoe@gmail.com",
    role: 'citizen',
    password: "1234",
    password_confirmation: "1234"
)

User.create!(
    username: "admin",
    email: "admin@chiriku.com",
    role: 'admin',
    password: "admin1234",
    password_confirmation: "admin1234"
)