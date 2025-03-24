class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :ISBN
      t.boolean :availability
      t.binary :cover_image
      t.date :date_verified
      t.time :time_verified
      t.date :date_uploaded
      t.date :time_uploaded
      t.string :edition
      t.string :category

      t.timestamps
    end
  end
end
