class Transaction < ActiveRecord::Base
  extend Enumerize
  include Tokenable
  validates :token, presence: true, uniqueness: true
  validates :value, presence: true
  validates :account_to, presence: true

  belongs_to :account_to, class_name: "Account", foreign_key: "account_to_id"
  belongs_to :account_from, class_name: "Account", foreign_key: "account_from_id"

  before_create :set_transaction_type
  before_save :chech_valid_accounts

  enumerize :transaction_type, in: %w[transfer deposit chargeback]
end
