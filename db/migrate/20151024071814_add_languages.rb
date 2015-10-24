class AddLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name

      t.timestamps
    end
    create_table :translators do |t|
      t.string :name

      t.timestamps
    end
  end
end
