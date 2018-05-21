class Account < ActiveRecord::Base
  extend Enumerize
  validates_presence_of :name

  has_ancestry
  belongs_to :client
  has_many :transactions_to, class_name:'Transaction', foreign_key: 'account_to_id'
  has_many :transactions_from, class_name:'Transaction', foreign_key: 'account_from_id'

  enumerize :status, in: %w[active canceled bloqued], default: :active
end
