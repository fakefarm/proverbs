class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :status
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
