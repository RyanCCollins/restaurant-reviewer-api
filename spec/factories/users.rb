FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password 'myPassword123'
    password_confirmation 'myPassword123'
  end
end
