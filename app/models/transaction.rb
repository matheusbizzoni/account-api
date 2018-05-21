class Transaction < ActiveRecord::Base
  extend Enumerize
  include Tokenable
  validates :token, presence: true, uniqueness: true
  validates :value, presence: true
  validates :account_to, presence: true

  belongs_to :account_to, class_name: "Account"
  belongs_to :account_from, class_name: "Account"

  enumerize :transaction_type, in: %w[transfer deposit chargeback]
end
