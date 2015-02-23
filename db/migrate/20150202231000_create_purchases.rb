class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :file_import_id
      t.integer :customer_id
      t.integer :item_id
      t.integer :count

      t.timestamps null: false
    end
  end
end
