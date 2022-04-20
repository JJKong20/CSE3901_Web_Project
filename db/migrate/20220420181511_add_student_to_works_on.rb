class AddStudentToWorksOn < ActiveRecord::Migration[6.1]
  def change
    add_column :works_ons, :student_id, :reference
  end
end
