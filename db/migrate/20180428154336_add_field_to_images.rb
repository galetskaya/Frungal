class AddFieldToImages < ActiveRecord::Migration[5.1]
  def change
  	add_column :images, :album_id, :integer
  end
end
