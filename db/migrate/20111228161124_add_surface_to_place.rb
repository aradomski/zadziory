class AddSurfaceToPlace < ActiveRecord::Migration
  def change
    add_column :places, :surface, :string
  end
end
