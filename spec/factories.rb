Factory.define :user do |u|
  u.sequence(:email) { |n| "john#{n}@doe.com" }
  u.password "password"
  u.password_confirmation "password"
end

Factory.define :role do |r|
  r.name "admin"
end
