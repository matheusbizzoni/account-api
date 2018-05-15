class Account < ActiveRecord::Base
  extend Enumerize
  validates_presence_of :name

  has_ancestry
  belongs_to :client
  
  enumerize :status, in: %w[active cancelled bloqued]
end
