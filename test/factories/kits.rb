# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :kit do
    location nil
    budget ""
    tombstoned false
    checkoutable false
    cost "9.99"
    insured false
  end
end
