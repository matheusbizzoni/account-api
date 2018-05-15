FactoryBot.define do
  factory :private_person do
    name { Faker::BackToTheFuture.character }
    cpf_or_cnpj { "#{Faker::CPF.numeric}" }
    birthdate { 20.years.ago }
  end
end
