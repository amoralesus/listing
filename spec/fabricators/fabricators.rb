Fabricator(:girl) do
  name { Faker::Name.name }
  description { Faker::Lorem.sentence }
  product_code {Faker::Lorem.words(2).join.downcase }
end
