require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context 'validations' do
    it { is_expected.to validate_uniqueness_of(:token) }
    it { is_expected.to validate_presence_of(:token) }
    it { is_expected.to validate_presence_of(:value) }
  end
  context 'relationships' do
    it { is_expected.to belong_to(:account_to).class_name('Account') }
    it { is_expected.to belong_to(:account_from).class_name('Account') }
  end
  context 'enumerize' do
    it { is_expected.to enumerize(:type) }
  end

  context '#before_create' do
    let(:account_to) { create(:account) }
    let(:account_from) { create(:account) }
    let(:transaction) { create(:transaction, account_to: account_to, account_from: account_from) }
    it 'expect token not to be nil' do
      expect(transaction.token).not_to be_nil
    end
  end
end
