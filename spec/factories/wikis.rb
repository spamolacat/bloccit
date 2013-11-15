# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wiki do
    content "MyString"
    title "MyString"
    user_id 1
  end
end
