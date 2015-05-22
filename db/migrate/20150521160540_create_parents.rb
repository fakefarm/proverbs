class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.timestamps null: false
      t.belongs_to :user, index: true
    end
  end
end
