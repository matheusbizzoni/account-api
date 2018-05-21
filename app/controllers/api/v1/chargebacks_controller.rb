class Api::V1::ChargebacksController < ApplicationController
  private

  def set_transaction
    @transaction = Transaction.find_by_token(params[:token])
  end

  def chargeback_params
    params.require(:chargeback).permit(:token)
  end
end
