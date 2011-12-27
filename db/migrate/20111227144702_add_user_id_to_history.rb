class AddUserIdToHistory < ActiveRecord::Migration
  def change
    add_column :histories, :user_id, :integer
  end
end
