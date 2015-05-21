class CreateMemorizeds < ActiveRecord::Migration
  def change
    create_table :memorizeds do |t|
      t.belongs_to :kid, index: true
      t.belongs_to :verse, index: true

      t.timestamps null: false
    end
  end
end
