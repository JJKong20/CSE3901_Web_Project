class AddReferencesToStudentTeams < ActiveRecord::Migration[6.1]
  def change
    add_reference :student_on_teams, :student, null: false, foreign_key: true
    add_reference :student_on_teams, :team, null: false, foreign_key: true
  end
end
