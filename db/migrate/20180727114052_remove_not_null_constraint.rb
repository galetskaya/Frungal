class RemoveNotNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null :albums, :created_at, true
    change_column_null :albums, :updated_at, true
  end
end
