FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}

  factory :user do
    email "flynn@encom.com"
    password "gettaClu1982"
    name "Kevin Flynn"
  end

end
