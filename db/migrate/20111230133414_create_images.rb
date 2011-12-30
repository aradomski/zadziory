class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :place_id
      t.string :image

      t.timestamps
    end
  end
end
