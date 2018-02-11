# == Schema Information
#
# Table name: designs
#
#  id                       :integer          not null, primary key
#  user_id                  :integer          not null
#  design_original_filename :string(255)      not null
#  design_file              :string(255)      not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class DesignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
