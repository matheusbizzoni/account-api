class Client < ActiveRecord::Base
  extend Enumerize
  validates_presence_of :name
  validates :cpf_or_cnpj, presence: true, uniqueness: true

  has_many :accounts

  enumerize :client_type, in: %w[legal private]
end
