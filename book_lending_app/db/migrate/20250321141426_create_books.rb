class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, limit:50
      t.string :ISBN, null: false, limit:50
      t.boolean :availability, null: false, default: true
      t.binary :cover_image, null: false
      t.date :date_verified, null: false
      t.time :time_verified, null: false
      t.date :date_uploaded, null: false
      t.date :time_uploaded, null: false
      t.string :edition, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
