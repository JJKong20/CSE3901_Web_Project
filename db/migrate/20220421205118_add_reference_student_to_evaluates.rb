class AddReferenceStudentToEvaluates < ActiveRecord::Migration[6.1]
  def change
    add_reference :evaluates, :student, null: false, foreign_key: true
  end
end
