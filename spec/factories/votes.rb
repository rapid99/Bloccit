FactoryGirl.define do
  factory :vote do
    post RandomData.random_sentence
    user
  end
end
