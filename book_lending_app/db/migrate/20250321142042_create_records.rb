class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :user_id, null: false
      t.string :book_id, null: false
      t.timestamp :borrow_date, null: false
      t.timestamp :expected_date, null: false
      t.timestamp :returned_on, null: false

      t.timestamps
    end
  end
end
