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

  def destroy_item

    #item_is=@cart.find_by(i)
    @@cart# = session[:cart]
    #element_position=@cart.index()
    #item = Item.find(session[:cart][i])
    #i=a.detect{|w| w.i == params[:i]}
    #@cart.delete_at(element_position)
    byebug
    session[:cart]=a

  end
end
