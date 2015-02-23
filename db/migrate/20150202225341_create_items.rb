class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.decimal :price, precision: 8, scale: 2
      t.integer :count
      t.integer :merchant_id

      t.timestamps null: false
    end
  end
end
