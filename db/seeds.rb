# users = []
# 20.times do
#   user = User.create!(
#     name: Faker::Name.name,
#     username: Faker::Alphanumeric.alphanumeric(number: 8, min_alpha: 5),
#     dob: Faker::Date.birthday(min_age: 18, max_age: 65).strftime("%Y-%m-%d"),
#     about: Faker::Emotion.adjective,
#     email: Faker::Internet.email(domain: 'gmail.com'),
#     password: Faker::Lorem.characters(number: 10)
#   )
#   users << user
# end
#p users

# users.each do |user|
#   5.times do
#       post = Post.create!(
#         content: Faker::Quote.famous_last_words,
#         caption: Faker::Fantasy::Tolkien.character,
#         user_id: user.id
#       )
#       10.times do
#         like = Like.create!(
#           follower_id: Faker::Number.between(from: 1, to: 22), # Select a random user_id from the array
#           post_id: post.id
#         )
#       end
#       10.times do
#         comment = Comment.create!(
#           follower_id: Faker::Number.between(from: 1, to: 22), # Select a random user_id from the array
#           post_id: post.id,
#           comment_text: Faker::Emotion.noun
#         )
#       end
#   end
# end


50.times do
  user_id = rand(1..22)
  followee_id = rand(1..22)

  # Ensure user_id and followee_id are different
  while user_id == followee_id
    followee_id = rand(1..22)
  end

  follow = Follow.create!(
    user_id: user_id,
    followee_id: followee_id
  )
end







# 20.times do
#   user = User.create(
#     name: Faker::Name.name ,
#     username: Faker::Alphanumeric.alphanumeric(number: 8, min_alpha: 5) ,
#     dob: Faker::Date.birthday(min_age: 18, max_age: 65).strftime("%Y-%m-%d"),
#     about: Faker::Emotion.adjective,
#     email: Faker::Internet.email(domain: 'gmail.com') ,
#     password: Faker::Lorem.characters(number: 10),
#   )
#   5.times do
#     post = Post.create(
#       content: Faker::Quote.famous_last_words  ,
#       caption: Faker::Fantasy::Tolkien.character,
#       user_id: user.id

#     )
#     10.times do
#     like = Like.create(
#         follower_id:Faker::Number.between(from: 1, to: 20),
#         post_id: post.id
#     )
#     10.times do
#     comment = Comment.create(
#         follower_id: Faker::Number.between(from: 1, to: 10),
#         post_id: post.id,
#         comment_text: Faker::Emotion.noun
#     )
#     end
#     end
#   end
# end

# 50.times do
#   follower_id = rand(1..20)
#   followee_id = rand(1..20)

#   # Ensure follower_id and followee_id are different
#   while follower_id == followee_id
#     followee_id = rand(1..20)
#   end

#   follow = Follow.create(
#     follower_id: follower_id,
#     followee_id: followee_id
#   )
# end







