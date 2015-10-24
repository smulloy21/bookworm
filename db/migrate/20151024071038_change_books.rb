class ChangeBooks < ActiveRecord::Migration
  def change
    remove_column :books, :author
    add_column :books, :publisher, :string
    add_column :books, :date, :datetime
    add_column :books, :language_id, :integer
    add_column :books, :amazon, :string
    add_column :books, :goodreads, :string
    add_column :books, :description, :string
    add_column :books, :img, :string

    create_table :authors do |t|
      t.string :name
      t.string :bio
      t.string :img

      t.timestamps
    end
  end
end
