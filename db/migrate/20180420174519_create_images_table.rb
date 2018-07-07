class CreateImagesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.text :image
    end
  end
end
