class CreateCreditCardPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_card_payments do |t|
      t.integer :purchase_id
      t.integer :amount
      t.integer :payment_status
      t.boolean :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
