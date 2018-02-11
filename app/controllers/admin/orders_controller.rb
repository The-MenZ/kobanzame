class Admin::OrdersController < ApplicationController
  around_action :set_transaction, only: [:create]
  before_action :require_admin

  def index
    @orders = Order.all.order(created_at: :desc)
  end

  def create
  end

  def show
    @order = Order.find_by!(id: params[:id])
  end

  def new
  end

  def update
    @order = Order.find_by!(id: params[:id])
    @order.update(order_params)
    flash.notice = '変更しました'
    redirect_to admin_orders_path
  end

  private

    def order_params
      params.require(:order).permit(:progress)
    end

end
