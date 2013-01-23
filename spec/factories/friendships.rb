# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friendship do
    user_id "MyString"
    follower_id "MyString"
  end
end
