class OrdersController < ApplicationController

  def index
    @orders = current_user.orders.all
  end

  def create
    byebug
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
#  user_id        :integer          not null
#  design_id      :integer          not null
#  order_name     :string(255)      not null
#  comment        :text(65535)
#  recipient_name :integer          not null
#  tel            :integer          not null
#  postal_code    :integer          not null
#  address_1      :string(255)      not null
#  address_2      :string(255)      not null
#  material       :integer          not null
#  progress       :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
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
