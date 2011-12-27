class AddPlaceIdToPreference < ActiveRecord::Migration
  def change
    add_column :preferences, :place_id, :integer
  end
end
