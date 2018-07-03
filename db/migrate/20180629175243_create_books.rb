class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string "title"
      t.string "author"
      t.string "image"
      t.integer "user_id"
      t.integer "condition"
      t.string "notes"
      t.timestamps
    end
  end
end
