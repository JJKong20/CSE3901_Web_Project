class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :teamName

      t.timestamps
    end
  end
end
