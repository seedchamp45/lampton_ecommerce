class CreateProductpdfs < ActiveRecord::Migration[5.1]
  def change
    create_table :productpdfs do |t|
      t.string :filename
      t.string :content_type
      t.binary :file_contents
      t.string :title
      t.string :status
      t.string :productid
      t.string :topics

      t.timestamps
    end
  end
end
