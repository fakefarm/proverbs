class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps null: false
    end
  end
end
