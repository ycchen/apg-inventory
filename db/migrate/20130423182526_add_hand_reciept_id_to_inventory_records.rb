class AddHandRecieptIdToInventoryRecords < ActiveRecord::Migration
  def change
    add_column :inventory_records, :hand_reciept_id, :integer
  end
end
