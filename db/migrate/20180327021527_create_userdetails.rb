class CreateUserdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :userdetails do |t|
      t.string :birthday
      t.string :birthmonth
      t.string :birthyear
      t.string :gender
      t.string :mobilenumber

      t.timestamps
    end
  end
end
