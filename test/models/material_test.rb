# == Schema Information
#
# Table name: materials
#
#  id               :integer          not null, primary key
#  content_type     :integer
#  content_value    :text(65535)
#  status           :integer
#  internal_comment :text(65535)
#  external_comment :text(65535)
#  created_user_id  :integer
#  updated_user_id  :integer
#  active           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class MaterialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
