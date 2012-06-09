# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :accusation do
    title "They keep me to chained to a desk!"
    description "And there are BEES in the office! Seriously, who has bees in the workplace? And do hey really have to cover us in honey?"
    user nil
    client nil
  end
end
