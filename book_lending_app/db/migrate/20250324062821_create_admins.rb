class CreateAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :admins do |t|
      t.uuid :job_id, null: false
      t.string :level, null: false
      t.boolean :is_active, null: false

      t.timestamps
    end
  end
end
