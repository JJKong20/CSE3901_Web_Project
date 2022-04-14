class CreateStudentOnTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :student_on_teams do |t|

      t.timestamps
    end
  end
end
