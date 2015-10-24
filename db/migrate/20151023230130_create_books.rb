class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
