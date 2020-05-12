class OrdersController < ApplicationController


    before_action :authenticate_user!
    def create
        @order=Order.new(params.require(:order).permit(:user_id).merge!({status: 'Ordered'}))
        @order.save
        redirect_to :controller => 'products', :action => 'index'
    end
        
end
