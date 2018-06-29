class CreateLendings < ActiveRecord::Migration[5.2]
  def change
    create_table :lendings do |t|
      t.integer "book_id"
      t.integer "borrower_id"
      t.datetime "lend_date"
      t.string "status"
      t.timestamps
    end
  end
end
