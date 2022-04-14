class CreateWorksOns < ActiveRecord::Migration[6.1]
  def change
    create_table :works_ons do |t|
      t.integer :individualGrade
      t.text :generalComment

      t.timestamps
    end
  end
end
