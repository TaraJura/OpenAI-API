class AccountsController < ApplicationController
  def create
    @riot_account = Riot.new.account(params[:name])
    @account = Account.new(name: 'test')
    render json: @account
  end
end
