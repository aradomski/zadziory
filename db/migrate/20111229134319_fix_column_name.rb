class FixColumnName < ActiveRecord::Migration
  def self.up
	rename_column :places, :county, :region
  end

  def self.down
  end
end
