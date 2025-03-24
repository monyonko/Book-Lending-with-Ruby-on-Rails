class CreateVerifications < ActiveRecord::Migration[8.0]
  def change
    create_table :verifications do |t|
      t.boolean :status, null: false
      t.string :issue, null: false

      t.timestamps
    end
  end
end
