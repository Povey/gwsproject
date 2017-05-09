class AddImagepathToSamples < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :imagepath, :string
  end
end
