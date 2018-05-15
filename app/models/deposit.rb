class Deposit < Transaction
  before_save :nullable_account_from

  private

  def nullable_account_from
    self.account_from = nil
  end

  def set_transaction_type
    self.transaction_type = 'deposit'
  end
end
