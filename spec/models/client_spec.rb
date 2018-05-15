require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'validations' do
    it { is_expected.to validate_uniqueness_of(:cpf_or_cnpj) }
    it { is_expected.to validate_presence_of(:name) }
  end
  context 'relationships' do
    it { is_expected.to have_many(:accounts) }
  end
  context 'enumerize' do
    it { is_expected.to enumerize(:client_type) }
  end
end
