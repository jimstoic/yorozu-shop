class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.text :note

      t.timestamps
    end
  end
end
