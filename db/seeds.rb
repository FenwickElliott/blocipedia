require 'random_data'

# user = User.new
# user.update_attributes(
#     email: 'charles@FenwickElliott.io',
#     password: '123456'
#     )

for i in 1..25 do
  Wiki.create!(
    title: 'SW_' << i.to_s << ': ' << RandomData.random_sentence,
    body: 'Body: ' << RandomData.random_paragraph,
    user_id: 1
  )
end
puts "#{Wiki.count} Wikis"
