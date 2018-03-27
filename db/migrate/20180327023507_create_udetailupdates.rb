class CreateUdetailupdates < ActiveRecord::Migration[5.1]
  def change
    create_table :udetailupdates do |t|
      t.string :iduser
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :birthday
      t.string :birthmonth
      t.string :birthyear
      t.string :gender
      t.string :mobilenumber

      t.timestamps
    end
  end
end
