FactoryBot.define do
  factory :transfer do
    association :account_to, factory: :not_root_private_person_account
    association :account_from, factory: :private_person_account
    value { 100 }
  end

  factory :deposit do
    association :account_to, factory: :not_root_private_person_account
    value { 100 }
  end
end
