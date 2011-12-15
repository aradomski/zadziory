class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.boolean :is_active
      t.string :owner
      t.date :availability_from
      t.date :availability_to
      t.decimal :price_min
      t.decimal :price_max
      t.decimal :deposit
      t.float :grade
      t.string :telephone
      t.string :country
      t.string :county
      t.string :city
      t.string :district
      t.string :street
      t.integer :place_nr
      t.integer :flat_nr
      t.string :coordinates
      t.string :place_type
      t.integer :floor_nr
      t.integer :nr_of_floors
      t.integer :nr_of_rooms
      t.integer :build_year
      t.string :heating_type
      t.integer :people_max
      t.string :for_who
      t.integer :min_length_lease
      t.integer :type_length_lease
      t.text :description
      t.boolean :has_balcony
      t.boolean :has_garage
      t.boolean :has_basement
      t.boolean :has_parking
      t.boolean :has_internet
      t.boolean :has_terrace
      t.boolean :has_lift
      t.boolean :has_garden

      t.timestamps
    end
  end
end
