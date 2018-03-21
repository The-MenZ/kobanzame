# == Schema Information
#
# Table name: credit_card_payments
#
#  id              :integer          not null, primary key
#  purchase_id     :integer
#  amount          :integer
#  payment_status  :integer
#  active          :boolean
#  created_user_id :integer
#  updated_user_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class CreditCardPayment < ApplicationRecord
  # = Module & Configure
  enum payment_status: {
    captured: 10,
    charged: 20,
    canceled: 99
  }

  def payment(purchase, token, amount)
    # TODO:ここに寄せる
  end
end
