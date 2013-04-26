# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :component_model do
    brand nil
    name "MyString"
    description "MyText"
    training_required ""
    autocomplete "MyString"
  end
end
