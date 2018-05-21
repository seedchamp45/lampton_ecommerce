class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :body
      t.attachment :image
      t.string :status
      t.string :content

      t.timestamps
    end
  end
end
