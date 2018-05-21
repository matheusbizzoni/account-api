class Api::V1::AccountsController < ApplicationController
  before_filter :set_client, except: :index
  respond_to :json

  def index
    @accounts = Account.all
    respond_with @accounts
  end

  def show
    respond_with @account
  end

  def create
    @account = Account.new(account_params)
    @account.save
    respond_with @account
  end

  def update
    @account.update(account_params)
    respond_with @account
  end

  def destroy
    @account.status = :canceled
    @account.save
    respond_with @account
  end

  def block
    @account.status = :bloqued
    @account.save
    respond_with @account
  end

  private

  def set_account
    @account = Account.find params[:id]
  end

  def account_params
    params.require(:account).permit(:name, :balance, :ancestry)
  end
end
