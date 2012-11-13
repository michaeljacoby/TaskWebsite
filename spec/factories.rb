FactoryGirl.define do
  factory :user do
    email "batman"
    password "secret"
    created_at Time.now
    updated_at Time.now

   
  end
end
