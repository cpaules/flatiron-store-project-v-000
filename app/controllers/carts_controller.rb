require 'pry'
class CartsController < ApplicationController
  before_action :user_signed_in?

  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    #binding.pry
    @cart = Cart.find(params[:id])
    @cart.checkout
    redirect_to cart_path(@cart)
  end

end
