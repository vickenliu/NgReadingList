class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :amazon_id
      t.text :description
      t.integer :rate
      t.string :author

      t.timestamps null: false
    end
  end
end
