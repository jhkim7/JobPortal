class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :job
      t.string :job_seeker
      t.text :cover_letter
      t.string :status

      t.timestamps
    end
  end
end
