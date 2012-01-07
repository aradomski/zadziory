class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :place_id
      t.integer :owner_id
      t.integer :status
      t.date :date_start
      t.date :date_end
      t.integer :number_of_people
      t.string :people_type
      t.text :message

      t.timestamps
    end
  end
end
