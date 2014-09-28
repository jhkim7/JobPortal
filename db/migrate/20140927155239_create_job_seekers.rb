class CreateJobSeekers < ActiveRecord::Migration
  def change
    create_table :job_seekers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :skills
      t.text :resume
      t.string :encrypted_password

      t.timestamps
    end
  end
end
