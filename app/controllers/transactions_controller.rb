class TransactionsController < ApplicationController
  def index
    @transactions = Group.find(params[:group_id]).entities
  end
end
