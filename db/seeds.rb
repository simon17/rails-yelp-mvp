# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Restaurant.destroy_all
array = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    category:  array.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
