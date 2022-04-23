class AddColumnsSenderRecipientToEvaluates < ActiveRecord::Migration[6.1]
  def change
    add_column :evaluates, :sender_id, :integer
    add_column :evaluates, :recipient_id, :integer
  end
end
