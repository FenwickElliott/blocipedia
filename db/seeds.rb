# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

user = User.new
user.update_attributes(
    email: 'charles@FenwickElliott.io',
    password: '123456'
    )

for i in 1..25 do
  Wiki.create!(
    title: 'SW_' << i.to_s << ': ' << RandomData.random_sentence,
    body: 'Body: ' << RandomData.random_paragraph,
    user_id: 1
  )
end
puts "#{Wiki.count} Wikis"
