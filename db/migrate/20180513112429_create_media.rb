class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :body
      t.string :status
      t.attachment :image

      t.timestamps
    end
  end
end
