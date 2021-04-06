FactoryBot.define do
  factory :comment do
    user_nickname { Faker::Name.first_name }
    content { Faker::Lorem.sentences }
    post
  end
end