require 'random_data'
# Create Users
5.times do
  User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
user = User.all

# Create topics
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Sponsored posts
25.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 99
  )
end
sponsored_posts = SponsoredPost.all

# Create posts
50.times do
  Post.create!(
    user: user.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    user: user.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Questions
100.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
  )
end

# Creating test admin user
admin = User.create!(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
)

# Creating test member user
member = User.create!(
  name: 'Member User',
  email: 'member@example.com',
  password: 'helloworld'
)

# Creating test moderator
mod = User.create!(
  name: "Moderator User",
  email: "mod@example.com",
  password: 'helloworld',
  role: 'moderator'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
puts "#{Vote.count} votes created"
