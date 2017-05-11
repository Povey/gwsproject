class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_name
      t.integer :category_id
      t.timestamps
    end
  end
end
