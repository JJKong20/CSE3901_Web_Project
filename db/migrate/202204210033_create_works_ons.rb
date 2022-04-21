class CreateWorksOns < ActiveRecord::Migration[6.1]
  def change
    create_table :works_ons do |t|

      t.timestamps
    end
  end
end
