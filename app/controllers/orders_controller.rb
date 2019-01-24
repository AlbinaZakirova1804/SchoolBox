class OrdersController < ApplicationController



  def new
    @order=Order.new
  end

  # def create
  #   i=0
  #   while i < session[:cart].length
  #   @order= Order.create(:user_id => session[:user_id], :item_id => session[:cart][i])#:user_id, :item_id, :total_sum
  #   i=i+1
  #   end
  #   render :show
  # end

  # def show
  #   # @items = Item.all
  #   # @user = current_user
  #   # while i < session[:cart].length
  #   # @order = find_by(order[:id])
  #   #
  # end

  def cart
    @cart=[]
    i = 0
    while i < session[:cart].length do
      item = Item.find(session[:cart][i])
      byebug
       @cart << item #item.id
       i += 1
    end
     sum=0
       @total_sum = @cart.inject(0){|sum,item| sum + item.price }
       @total_sum = @total_sum.round(2)
       session[:sum]=[]
       session[:sum]<< @total_sum
  end

  def destroy_item
    a=session[:cart].index(params[:id].to_i)
    #byebug
    session[:cart].delete_at(a)
    redirect_to "/cart"
  end


  def placed
    cart
  end

end
