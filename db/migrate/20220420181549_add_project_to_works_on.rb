class AddProjectToWorksOn < ActiveRecord::Migration[6.1]
  def change
    add_column :works_ons, :project_id, :reference
  end
end
