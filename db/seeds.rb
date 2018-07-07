# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'faker'

10.times do
  name = Faker::Name.unique.name
  user = User.create(name: name, email: Faker::Internet.email, password: 'password', subscription: Subscription.new)
  user.subscription.update(discount: Discount.new)
  puts user.name
  puts user.subscription.name
  puts user.subscription.discount.amount
end
