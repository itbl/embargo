# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :accusation do
    title "MyString"
    description "MyString"
    accuser nil
    accusable nil
  end
end
