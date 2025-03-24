class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.timestamp :verification_date
      t.datetime :upload_date

      t.timestamps
    end
  end
end
