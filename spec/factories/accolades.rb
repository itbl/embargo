# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :accolade do
    title "They give me fistfuls of cash errday"
    description "Seriously, the money never stops, it is crazy. They also have hot and cold running booze, it's nuts!"
    user nil
    client nil
  end
end
