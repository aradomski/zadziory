class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :surname
      t.date :yob
      t.date :anniversary
      t.string :flower
      t.string :color

      t.timestamps
    end
  end
end
