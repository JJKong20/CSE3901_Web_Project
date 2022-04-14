class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.boolean :adminStatus

      t.timestamps
    end
  end
end
