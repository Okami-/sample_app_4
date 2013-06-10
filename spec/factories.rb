FactoryGirl.define do
  factory :user do
    name     "Richie Baker"
    email    "richie@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end