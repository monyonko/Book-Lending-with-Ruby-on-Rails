class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false, limit: 10
      t.string :second_name, null: false limit: 10
      t.boolean :is_active, null: false, default: true


      t.timestamps
    end
  end
end
