# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    user_id 1
    title "MyString"
    description "MyText"
    starts_at "2015-01-06 19:35:21"
    ends_at "2015-01-06 19:35:21"
  end
end
