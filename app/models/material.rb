# == Schema Information
#
# Table name: materials
#
#  id              :integer          not null, primary key
#  type            :integer
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
end
