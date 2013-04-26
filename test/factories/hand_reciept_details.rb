# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hand_reciept_detail do
    hand_reciept nil
    inventory nil
    inventory_status nil
    location nil
    user nil
  end
end
