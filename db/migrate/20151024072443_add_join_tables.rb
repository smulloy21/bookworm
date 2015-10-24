class AddJoinTables < ActiveRecord::Migration
  def change
    create_table :authors_books do |t|
      t.integer :author_id
      t.integer :book_id
    end
    create_table :books_translators do |t|
      t.integer :translator_id
      t.integer :book_id
    end
  end
end
