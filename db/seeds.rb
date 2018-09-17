require 'faker'

#Users created
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all
#items created
10.times do
  Item.create!(
    name: Faker::DumbAndDumber.quote,
    user: users.sample
    )
  end

puts "Seeding is Finished."
puts "#{User.count} users created."
puts "#{Item.count} items created."
