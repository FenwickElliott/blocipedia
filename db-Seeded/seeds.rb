# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


for i in 1..25 do
  Wiki.create!(
    title: i.to_s << ': Seeded Wiki',
    body: 'Body of seeds',
    # user: User.first,
    user_id: 1
  )
end
puts "#{Wiki.count} Wikis"
