FactoryBot.define do
  factory :transfer_transaction, class: 'Transaction' do
    association :account_to, factory: :private_person_account
    association :account_from, factory: :private_person_account
    value { 100 }
    type 'transfer'
  end
end
