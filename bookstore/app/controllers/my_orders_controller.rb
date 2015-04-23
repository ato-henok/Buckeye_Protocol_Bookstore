class MyOrdersController < ApplicationController
  def new
      @user = current_user

      @orders = Order.where(buyer_id: @user.id)
         
    

User.find(session[:user_id]).books
  end
end
