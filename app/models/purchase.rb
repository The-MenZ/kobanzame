# == Schema Information
#
# Table name: purchases
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  order_id        :integer
#  purchase_status :integer
#  active          :boolean
#  created_user_id :integer
#  updated_user_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Purchase < ApplicationRecord
  # = Module & Configure
  enum purchase_status: {
    issued: 10,
    paied: 20,
    canceled: 99
  }

  # = Callback
  before_create do
    self.purchase_status ||= :issued
  end
end
