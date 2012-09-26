class StoreController < ApplicationController
  def index
    session[:counter] = (session[:counter]||0) + 1
    @products = Product.all
    @cart = current_cart
  end
end
