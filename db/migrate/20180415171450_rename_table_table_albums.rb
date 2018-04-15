class RenameTableTableAlbums < ActiveRecord::Migration[5.1]
  def change
    rename_table :table_albums, :albums
  end
end
