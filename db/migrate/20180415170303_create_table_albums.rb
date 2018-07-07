class CreateTableAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :table_albums do |t|
      t.string :name
      t.text :description
      t.text :image
    end
  end
end
