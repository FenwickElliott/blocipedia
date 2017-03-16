require 'random_data'


user = User.new
user.update_attributes(
  name: 'Charles',
  email: 'Charles@FenwickElliott.io',
  password: '123456',
  role: :admin,
)

user = User.new
user.update_attributes(
  name: 'admin',
  email: 'admin@eg.com',
  password: '123456',
  role: :admin
  )

user = User.new
user.update_attributes(
  name: 'premium',
  email: 'premium@eg.com',
  password: '123456',
  role: :premium
  )

user = User.new
user.update_attributes(
  name: 'standard',
  email: 'standard@eg.com',
  password: '123456',
  role: :standard
  )

16.times do
  user = User.new
  user.update_attributes(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: '123456'
  )
end


for i in 1..25 do
  Wiki.create!(
    title: 'SW_' << i.to_s << ': ' << RandomData.random_sentence,
    body: 'Body: ' << RandomData.random_paragraph,
    user_id: 1
  )
end

puts "#{User.count} users"
puts "#{Wiki.count} Wikis"
