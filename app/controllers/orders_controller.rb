class OrdersController < ApplicationController
    def index
    end
    def create
        user = current_user
        @order = user.order.new(vehicle_id: )
    end
end
