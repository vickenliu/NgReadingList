class ChangeTale < ActiveRecord::Migration
  def change
  	change_column :books, :amazon_id, :string
  end
end
