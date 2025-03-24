class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :ISBN
      t.boolean :availability

      t.timestamps
    end
  end
end
