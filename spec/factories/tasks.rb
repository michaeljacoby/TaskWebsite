# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task, :class => 'Tasks' do
    name "MyString"
    resolvestatus ""
    assignee "MyString"
    description "MyString"
  end
end
