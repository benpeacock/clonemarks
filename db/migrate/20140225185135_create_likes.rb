class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :bookmark

      t.timestamps
    end
    add_index :likes, :bookmark_id
  end
end
