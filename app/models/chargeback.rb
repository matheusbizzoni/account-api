class Chargeback < Transaction

  private

  def set_transaction_type
    self.transaction_type = 'chargeback'
  end
end
