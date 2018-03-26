class CreateOmisePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :omise_payments do |t|

      t.timestamps
    end
  end
end
