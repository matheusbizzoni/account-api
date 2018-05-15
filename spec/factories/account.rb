FactoryBot.define do
  factory :legal_person_account, class: 'Account' do
    name { "Account #{Faker::Bank.name}" }
    association :client, factory: :legal_person
    balance { 100.to_f }
    status 'active'
  end

  factory :private_person_account, class: 'Account' do
    name { "Account #{Faker::Bank.name}" }
    association :client, factory: :private_person
    balance { 100.to_f }
    status 'active'
  end

  factory :not_root_private_person_account, class: 'Account' do
    name { "Account #{Faker::Bank.name}" }
    association :client, factory: :private_person
    balance { 100.to_f }
    status 'active'
    ancestry 1
  end
end
