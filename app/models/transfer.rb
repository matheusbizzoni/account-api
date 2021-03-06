class Transfer < Transaction
  before_save :validates_accont_to_is_not_root_account
  before_create :set_transaction_type
  before_save :chech_valid_accounts

  private

  def validates_accont_to_is_not_root_account
    !self.account_to.is_root?
  end

  def set_transaction_type
    self.transaction_type = 'transfer'
  end

  def chech_valid_accounts
    account_to.status.active? && account_from.status.active?
  end
end
