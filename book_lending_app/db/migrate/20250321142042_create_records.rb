class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :user_id
      t.string :book_id
      t.timestamp :borrow_date
      t.timestamp :expected_date
      t.timestamp :returned_on

      t.timestamps
    end
  end
end
