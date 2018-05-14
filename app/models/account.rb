class Account < ActiveRecord::Base
  extend Enumerize
  validates_presence_of :name

  has_ancestry
end
