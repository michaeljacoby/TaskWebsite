# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    body "MyString"
    from_user_id 1
    to_user_id 1
  end
end
