class RemoveStudentColumnFromWorksOn < ActiveRecord::Migration[6.1]
  def change
    remove_column :works_ons, :student_id
  end
end
