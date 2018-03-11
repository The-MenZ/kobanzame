# == Schema Information
#
# Table name: products
#
#  id                      :integer          not null, primary key
#  design_id               :integer
#  material_id             :integer
#  name                    :string(255)
#  description             :text(65535)
#  image_original_filename :string(255)
#  image                   :string(255)
#  url                     :string(255)
#  price                   :integer
#  sale_status             :integer
#  active                  :boolean
#  created_user_id         :integer
#  updated_user_id         :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Product < ApplicationRecord

  # = Module & Configure
  enum product_status: {
    private_sale: 0,
    public_sale: 10,
    sale_stopped: 20
  }

  # = Association
  belongs_to :design
  has_many :order

  # = Callback
  before_validation do
    self.product_status ||= :private_sale
    self.description ||= ''
    self.price ||= calculate_price
    self.active ||= true
  end

  # = Instance method

  def calculate_price
    # TODO:スタブとして固定値
    1000
  end

end
