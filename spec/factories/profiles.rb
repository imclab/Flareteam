# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    user_id 1
    wants_email_notifications false
  end
end
