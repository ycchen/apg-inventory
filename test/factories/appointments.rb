# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    physician nil
    patient nil
    appt_date "2013-04-22 14:37:27"
    note "MyText"
  end
end
