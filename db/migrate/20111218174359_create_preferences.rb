class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :animal
      t.boolean :smoking
      t.boolean :relationship

      t.timestamps
    end
  end
end
