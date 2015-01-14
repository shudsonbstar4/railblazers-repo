# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name "MyString"
    group_id 1
    description "MyText"
    admin ""
    members ""
  end
end
