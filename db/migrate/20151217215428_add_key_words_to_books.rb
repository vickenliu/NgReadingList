class AddKeyWordsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :key_words, :text
  end
end
