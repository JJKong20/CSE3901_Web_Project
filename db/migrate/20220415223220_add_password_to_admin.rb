class AddPasswordToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :password, :string
  end
end
