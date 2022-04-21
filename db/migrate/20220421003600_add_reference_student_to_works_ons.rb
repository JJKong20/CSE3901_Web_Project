class AddReferenceStudentToWorksOns < ActiveRecord::Migration[6.1]
  def change
    add_reference :works_ons, :student, null: false, foreign_key: true
  end
end
