class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :body
      t.string :example
      t.string :video
      t.timestamps null: false
    end
  end
end
