FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "john#{n}@doe.com" }
    password "password"
    password_confirmation "password"
  end
end
