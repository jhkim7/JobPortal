class AddSaltToJobSeekers < ActiveRecord::Migration
  def change
    add_column :job_seekers, :salt, :string
  end
end
