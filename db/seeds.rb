require 'Faker'

5.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              user_name: Faker::Lorem.words(1),
              password_hash: Faker::Lorem.characters(12),
              street: Faker::Address.street_address,
              city: Faker::Address.city,
              state:Faker::Address.state,
              zip: Faker::Address.zip  )
end
