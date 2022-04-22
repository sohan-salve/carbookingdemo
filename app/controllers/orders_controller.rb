class OrdersController < ApplicationController
    def index
    end
    def create
        user = current_user
       @order = user.orders.new(vehicle_id: params[:vehicle_id])
       @order.save
       flash[:notice] ="order created successfully!"
       redirect_to vehicles_path
    end

    def my_orders
        # debugger
        @orders = Order.where(user_id: current_user.id)
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to my_orders_orders_path
    end
end
