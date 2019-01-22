class OrdersController < ApplicationController

  def create
    @order= Order.create(:user_id, :item_id, :total_sum)
  end

  def show
  #  @item = find_by(session[:cart][0])

  end

  def cart
    @cart=[]
    i = 0
    while i < session[:cart].length do
      item = Item.find(session[:cart][i])
       @cart << item
       i += 1
    end
  #  @item = Item.find(session[:cart][id])
    #byebug
  end
end
