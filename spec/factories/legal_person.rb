FactoryBot.define do
  factory :legal_person do
    name { "#{Faker::BackToTheFuture.character}" }
    cpf_or_cnpj {"#{ Faker::CNPJ.numeric }"}
    fantasy_name { "#{Faker::BackToTheFuture.character}" }
  end
end
