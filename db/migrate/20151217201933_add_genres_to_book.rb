class AddGenresToBook < ActiveRecord::Migration
  def change
    add_reference :books, :Genre, index: true, foreign_key: true
  end
end
