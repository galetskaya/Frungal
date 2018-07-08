class RemoveImageFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :image, :string
  end
end
