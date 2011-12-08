class CreatePersonInfos < ActiveRecord::Migration
  def change
    create_table :person_infos do |t|
      t.string :name
      t.string :surname
      t.string :nick
      t.boolean :sex
      t.boolean :isUser

      t.timestamps
    end
  end
end
