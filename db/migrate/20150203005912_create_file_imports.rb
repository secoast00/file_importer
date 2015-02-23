class CreateFileImports < ActiveRecord::Migration
  def change
    create_table :file_imports do |t|
        t.decimal :total, precision: 8, scale: 2

        t.timestamps null: false
    end

  end
end
