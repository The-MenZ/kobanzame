class TopController < ApplicationController
  skip_before_action :require_login
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

end
