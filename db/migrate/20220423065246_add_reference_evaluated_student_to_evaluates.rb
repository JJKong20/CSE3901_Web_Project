class AddReferenceEvaluatedStudentToEvaluates < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :evaluates, :students, column: :sender_id, primary_key: :id
    add_foreign_key :evaluates, :students, column: :recipient_id, primary_key: :id
  end
end
