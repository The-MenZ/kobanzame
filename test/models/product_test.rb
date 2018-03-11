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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
