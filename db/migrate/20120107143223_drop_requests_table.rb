class DropRequestsTable < ActiveRecord::Migration
  def up
    drop_table :requests
  end

  def down
  end
end
