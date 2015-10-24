class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :admin_id

      t.timestamps
    end

    create_table :group_memberships do |t|
      t.integer :member_id
      t.integer :group_id

      t.timestamps
    end

    create_table :discussions do |t|
      t.integer :book_id
      t.integer :group_id
      t.datetime :open
      t.datetime :close

      t.timestamps
    end

    create_table :questions do |t|
      t.integer :discussion_id
      t.string :title
      t.string :text
      t.integer :user_id

      t.timestamps
    end

    create_table :comments do |t|
      t.integer :discussion_id
      t.integer :question_id
      t.references :commentable, polymorphic: true, index: true
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end
end
