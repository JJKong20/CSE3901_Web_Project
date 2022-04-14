class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :projectName
      t.date :evalReleaseDate

      t.timestamps
    end
  end
end
