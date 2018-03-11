class OrdersController < ApplicationController
  around_action :set_transaction, only: [:create]

  def index
    @orders = current_user.orders.all.order(created_at: :desc)
  end

  def create
    product = Product.new(product_params)
    design = Design.new(design_params)
    material = Material.find(product.material_id)
    design.enable_cut = material.enable_cut
    design.print_type = material.class.print_types[material.print_type]
    design.user_id = current_user.id
    design.save
    order = Order.new(order_params)
    product.name = order.title
    product.design_id = design.id
    product.created_user_id = current_user.id
    product.updated_user_id = current_user.id
    product.save
    order.user_id = current_user.id
    order.product_id = product.id
    order.save
  end

  def show
  end

  def new
    @order = Order.new
    @design = Design.new
    @product = Product.new
  end

  def update
  end

  private
    def order_params
      params.require(:order).permit(
        :title,
        :comment,
        :recipient_name,
        :tel,
        :postal_code,
        :address_1,
        :address_2,
        :progress)
    end

    def design_params
      params.require(:design).permit(:name, :design_file)
    end

    def product_params
      params.require(:product).permit(:material_id)
    end
end
