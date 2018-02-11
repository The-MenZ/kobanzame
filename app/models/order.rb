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

class Order < ApplicationRecord
  # = Module & Configure
  enum progress: {
    ordered: 0,
    design_checking: 10,
    design_rejected: 11,
    design_accepted: 12,
    working: 20,
    work_stopped: 21,
    work_completed: 22,
    ship_preparing: 30,
    ship_stopped: 31,
    shipped: 32,
    canceled: 99
  }

  # = Association
  belongs_to :user
  has_one :design

  # = Validation
  # validates :title, presence: true, length: { maximum: 120 }
  # validates :comment, length: { maximum: 500 }
  # validate do
  # end

  # = Callback
  before_validation do
    self.progress ||= :ordered
  end

  def can_cansel?
    ordered? || design_checking? || design_accepted? || work_stopped?
  end

  # = Instance method
  private
    def progress_transition(destination, allowed_progress = [])
    end

end
