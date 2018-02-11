class OrdersController < ApplicationController

  def index
    @orders = current_user.orders.all
  end

  def create
    @design = Design.new(design_params)
    @design.user_id = current_user.id
    @design.save
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.design_id = @design.id
    @order.save
  end

  def show
  end

  def new
    @order = Order.new
    @design = Design.new
  end

  def update
  end

  private
    def order_params
      params.require(:order).permit(
        :order_name,
        :comment,
        :recipient_name,
        :tel,
        :postal_code,
        :address_1,
        :address_2,
        :progress)
    end

    def design_params
      params.require(:design).permit(:design_file)
    end
end
