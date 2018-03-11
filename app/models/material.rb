# == Schema Information
#
# Table name: materials
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :text(65535)
#  enable_cut      :boolean          default(FALSE), not null
#  print_type      :integer          not null
#  price           :integer
#  provide_status  :integer          not null
#  active          :integer
#  created_user_id :integer
#  updated_user_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Material < ApplicationRecord
  # = Module & Configure
  enum print_type: {
    unavailable: 0,
    single_color: 10,
    tone_color: 20
  }

  enum provide_status: {
    discontinued: 0,
    sale: 10,
    backorder: 20,
  }

  # = Association
  has_many :designs
  has_many :products

  # = Callback


  # = Instance method

end
