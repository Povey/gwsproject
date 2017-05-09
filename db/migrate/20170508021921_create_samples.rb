class CreateSamples < ActiveRecord::Migration[5.0]
  def change
    create_table :samples do |t|
      t.string :sample_name
      t.integer :category_id

      t.timestamps
    end
  end
end
