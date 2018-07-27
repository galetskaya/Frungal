class AddTimestampsToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :albums, null: true

    long_ago = DateTime.new(2000, 1, 1)
    Album.update_all(created_at: long_ago, updated_at: long_ago)

    change_column_null :albums, :created_at, false
  	change_column_null :albums, :updated_at, false
  end
end
