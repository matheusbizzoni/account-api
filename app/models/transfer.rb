class Transfer < Transaction
  before_save :validates_accont_to_is_not_root_account

  private

  def validates_accont_to_is_not_root_account
    !self.account_to.is_root?
  end
end
