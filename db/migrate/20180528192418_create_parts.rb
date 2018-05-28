class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.boolean :available

      t.timestamps
    end
  end
end
