class RemoveColumnOwner < ActiveRecord::Migration
  def up
    remove_column :places, :owner
  end

  def down
  end
end
