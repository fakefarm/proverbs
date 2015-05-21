class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :text
      t.integer :chapter
      t.integer :verse

      t.timestamps null: false
    end
  end
end
