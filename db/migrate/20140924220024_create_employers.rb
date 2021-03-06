class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :company
      t.string :name
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
