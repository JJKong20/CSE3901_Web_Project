class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.integer :teamGrade

      t.timestamps
    end
  end
end
