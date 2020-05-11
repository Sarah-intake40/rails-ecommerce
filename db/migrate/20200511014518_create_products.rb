class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.references :category, null:false, foreign_key: true
      t.string :title
      t.string :path
      t.text :description
      t.decimal :price
      t.integer :in_stock
      t.timestamps
    end
  end
end
