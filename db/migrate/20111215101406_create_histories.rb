class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :date_start
      t.date :date_end
      t.text :comment_item
      t.text :comment_tenant
      t.text :comment_owner
      t.float :rate_item
      t.float :rate_tenant
      t.float :rate_owner

      t.timestamps
    end
  end
end
