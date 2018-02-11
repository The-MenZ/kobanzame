# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  design_id       :integer
#  name            :string(255)
#  description     :text(65535)
#  price           :integer
#  product_status  :integer
#  active          :boolean
#  created_user_id :integer
#  updated_user_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
