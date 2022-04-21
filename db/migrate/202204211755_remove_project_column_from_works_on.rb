class RemoveProjectColumnFromWorksOn < ActiveRecord::Migration[6.1]
  def change
    remove_column :works_ons, :project_id
  end
end
