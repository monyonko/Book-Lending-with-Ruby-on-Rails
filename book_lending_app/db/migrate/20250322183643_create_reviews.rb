class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :review, null: false

      t.timestamps
    end
  end
end
