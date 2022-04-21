class AddReferenceProjectToWorksOns < ActiveRecord::Migration[6.1]
  def change
    add_reference :works_ons, :project, null: false, foreign_key: true
  end
end
