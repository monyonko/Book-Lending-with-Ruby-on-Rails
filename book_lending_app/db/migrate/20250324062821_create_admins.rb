class CreateAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :admins do |t|
      t.uuid :job_id
      t.string :level

      t.timestamps
    end
  end
end
