class ItemsController < ApplicationController


  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def add
    show
    session[:cart] ||= []
    session[:cart].push(@item.id)
    flash[:success] = "Item was successfully added to your cart!"

#byebug
    #flash
  end
end
