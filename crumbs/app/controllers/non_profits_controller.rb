class NonProfitsController < ApplicationController

  def new
    @non_profit = NonProfit.new
  end

  def create
    @non_profit = NonProfit.new(non_profit_params)
    if @non_profit.save
      redirect_to non_profit_path(@non_profit)
    else
      render 'new'
    end
  end

  def show
    @non_profit = NonProfit.find_by(id: params[:id])
  end

  private

  def non_profit_params
    params.require(:non_profit).permit(:name, :description, :location, :website, :email, :phone, :password, :confirm_passowrd)
  end

end
