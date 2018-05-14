FactoryBot.define do
  factory :legal_person_account do
    name { "Account #{Faker::Bank.name}" }
    legal_person
    balance { 100.to_f }
    status :active
  end

  factory :private_person_account do
    name { "Account #{Faker::Bank.name}" }
    private_person
    balance { 100.to_f }
    status :active
  end
end
