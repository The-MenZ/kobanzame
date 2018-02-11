# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  design_id      :integer          not null
#  order_name     :string(255)      not null
#  comment        :text(65535)
#  recipient_name :integer          not null
#  tel            :integer          not null
#  postal_code    :integer          not null
#  address_1      :string(255)      not null
#  address_2      :string(255)      not null
#  progress       :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
