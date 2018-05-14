FactoryBot.define do
  factory :private_person do
    name { Faker::BackToTheFuture.character }
    cnpj_or_cpf Faker::CPF.numeric
    birthdate { 20.years.ago }
    person_type :private
  end
end
