class ChangeDataTypeForPlaceSurface < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.change :surface, :float
    end
  end

  def self.down
    change_table :places do |t|
      t.change :surface, :string
    end
  end
end
