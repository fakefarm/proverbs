class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :text
      t.integer :chapter
      t.integer :verse
      t.integer :ref_id
      t.index :ref_id
      t.timestamps null: false
    end
  end
end
