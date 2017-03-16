require 'random_data'

user = User.new
user.update_attributes(
    email: 'admin@eg.com',
    password: '123456',
    role: :admin
    )

user = User.new
user.update_attributes(
    email: 'premium@eg.com',
    password: '123456',
    role: :premium
    )

user = User.new
user.update_attributes(
    email: 'standard@eg.com',
    password: '123456',
    role: :standard
    )


for i in 1..25 do
  Wiki.create!(
    title: 'SW_' << i.to_s << ': ' << RandomData.random_sentence,
    body: 'Body: ' << RandomData.random_paragraph,
    user_id: 1
  )
end

puts "#{User.count} users"
puts "#{Wiki.count} Wikis"
