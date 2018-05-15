require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
  context 'enumerize' do
    it { is_expected.to enumerize(:status) }
  end
end
