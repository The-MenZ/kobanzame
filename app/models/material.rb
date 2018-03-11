# == Schema Information
#
# Table name: materials
#
#  id              :integer          not null, primary key
#  material_type   :integer
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

  enum material_type: {
    acrylic_transparent_1: 101,
    acrylic_transparent_2: 102,
    acrylic_transparent_3: 103,
    acrylic_transparent_4: 104,
    acrylic_transparent_5: 105,
    agathis_1: 201,
    agathis_2: 202,
    agathis_3: 203,
    agathis_4: 204,
    agathis_5: 205,
  }

  enum provide_status: {
    out_of_stock: 0,
    sale: 10,
    backorder: 20,
  }

  # = Association
  has_many :designs
  has_many :products

  # = Callback


  # = Instance method

end
