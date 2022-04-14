class CreateEvaluates < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluates do |t|
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
