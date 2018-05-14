FactoryBot.define do
  factory :legal_person do
    name { Faker::BackToTheFuture.character }
    cnpj_or_cpf Faker::CNPJ.numeric
    fantasy_name name
    person_type :legal
  end
end
