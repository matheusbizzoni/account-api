class Chargeback < Transaction
  before_create :set_transaction_type
  before_save :chech_valid_accounts
  
  private

  def set_transaction_type
    self.transaction_type = 'chargeback'
  end

  def chech_valid_accounts
    if account_from.present?
      account_to.status.active? && account_from.status.active?
    else
      account_to.status.active?
    end
  end
end
