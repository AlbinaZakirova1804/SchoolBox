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
       @cart << item #item.id
       #byebug
       i += 1
    end
  #  @item = Item.find(session[:cart][id])
    #byebug
  end

  def destroy_item

    #session[:cart].include?(params[:id].to_i)
    a=session[:cart].index(params[:id].to_i)
    #byebug
    session[:cart].delete_at(a)
    redirect_to "/cart"
  end
  # private
  # def item_params
  #     byebug
  #   params.require(:id).permit(:id)
  # end
end
