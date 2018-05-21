class Api::V1::AccountsController < ApplicationController
  before_filter :set_client

  def index
  end
  def new
  end
  def show
  end
  def create
  end
  def update
  end

  private

  def set_client
    @client = Client.find(params[:private_person_id]) || Client.find(params[:legal_person_id])
  end

  def set_account

  end

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
