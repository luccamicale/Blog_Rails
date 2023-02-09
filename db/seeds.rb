# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users
first_user = User.create(name: 'Lucas', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Master of the universe.')
second_user = User.create(name: 'Lucca', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Mexico.')
third_user = User.create(name: 'Gleeny', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Poland.')
fourth_user = User.create(name: 'Lola', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Argentina.')

User.create([
    { name: 'User1', photo: 'https://example.com/user1.jpg', bio: 'Bio1' },
    { name: 'User2', photo: 'https://example.com/user2.jpg', bio: 'Bio2' },
    { name: 'User3', photo: 'https://example.com/user3.jpg', bio: 'Bio3' },
    { name: 'User4', photo: 'https://example.com/user4.jpg', bio: 'Bio4' },
    { name: 'User5', photo: 'https://example.com/user5.jpg', bio: 'Bio5' }
  ])
  
  users = User.all
  
  posts = []
  5.times do |i|
    posts << Post.create(
      title: "Post #{i+1}", 
      text: "Text #{i+1}", 
      author: users[i % 5]
    )
  end
  
  comments = []
  5.times do |i|
    comments << Comment.create(
      text: "Comment #{i+1}", 
      author: users[i % 5],
      post: posts[i % 5]
    )
  end
  
  9.times do |i|
    Like.create(
      author: users[i % 5],
      post: posts[i % 5]
    )
  end