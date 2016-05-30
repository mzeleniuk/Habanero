FactoryGirl.define do
  factory :recipe do
    sequence(:name) { |n| "Test recipe #{n}" }
    sequence(:description) { |n| "Test description #{n}" }
    sequence(:instructions) { |n| "Test instructions #{n}" }
  end
end
