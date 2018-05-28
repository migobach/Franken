class CreatePaints < ActiveRecord::Migration[5.2]
  def change
    create_table :paints do |t|
      t.string :name
      t.string :finish
      t.integer :price
      t.boolean :available

      t.timestamps
    end
  end
end
