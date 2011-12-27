class AddPlaceIdToHistory < ActiveRecord::Migration
  def change
    add_column :histories, :place_id, :integer
  end
end
