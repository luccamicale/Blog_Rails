# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users
first_user = User.create(name: 'Gustavo', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Master of the universe.')
second_user = User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Mexico.')
third_user = User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Poland.')
fourth_user = User.create(name: 'Ariel', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', bio: 'Teacher from Argentina.')

# Posts
first_post = Post.create(author_id: first_user, title: 'What is Lorem Ipsum', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
second_post = Post.create(author_id: first_user, title: 'Lorem Ipsum Why do we use it', text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).')
third_post = Post.create(author_id: first_user, title: 'Lorem Ipsum Where does it come from', text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
fourth_post = Post.create(author_id: first_user, title: 'Lorem Ipsum Where can I get some', text: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.')
fifth_post = Post.create(author_id: second_user, title: 'Lorem Ipsum 1', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
sixth_post = Post.create(author_id: second_user, title: 'Lorem Ipsum 2', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
seventh_post = Post.create(author_id: second_user, title: 'Lorem Ipsum 3', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
eighth_post = Post.create(author_id: third_user, title: 'Ipsum 1', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
ninht_post = Post.create(author_id: third_user, title: 'Ipsum 2', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
tenth_post = Post.create(author_id: fourth_user, title: 'Lorem 1', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
eleventh_post = Post.create(author_id: fourth_user, title: 'Lorem 2', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')

# Comments
first_comment = Comment.create(post: first_post, author: first_user, text: 'This is my first comment')
second_comment = Comment.create(post: first_post, author: second_user, text: 'This is my second comment' )

# Likes
first_like = Like.create(post: first_post, author: first_user)
second_like = Like.create(post: first_post, author: second_user)
third_like = Like.create(post: first_post, author: third_user)



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