# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Group.destroy_all
Post.destroy_all

user1 = User.create!(
    email: 'user1@example.com', 
    password: 'password', 
    password_confirmation: 'password')
user2 = User.create!(
    email: 'user2@example.com', 
    password: 'password', 
    password_confirmation: 'password')

dean = User.create!(
    email: 'dean@example.com', 
    password: 'password', 
    password_confirmation: 'password')

group1 = Group.create!(name: 'Group 1')
group2 = Group.create!(name: 'Group 2')

group1.users << user1
group1.users << user2
group2.users << user2

group1.posts.create!(title: 'Post 1 in Group 1', body: 'This is the body of post 1 in Group 1', user: user1)
group1.posts.create!(title: 'Post 2 in Group 1', body: 'This is the body of post 2 in Group 1', user: user2)

group2.posts.create!(title: 'Post 1 in Group 2', body: 'This is the body of post 1 in Group 2', user: user2)
