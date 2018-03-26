class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :omise_token
      t.integer :amount
      t.string :desc

      t.timestamps
    end
  end
end
