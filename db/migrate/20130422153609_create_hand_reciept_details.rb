class CreateHandRecieptDetails < ActiveRecord::Migration
  def change
    create_table :hand_reciept_details do |t|
      t.references :hand_reciept
      t.references :inventory
      t.references :inventory_status
      t.references :location
      t.references :user

      t.timestamps
    end
    add_index :hand_reciept_details, :hand_reciept_id
    add_index :hand_reciept_details, :inventory_id
    add_index :hand_reciept_details, :inventory_status_id
    add_index :hand_reciept_details, :location_id
    add_index :hand_reciept_details, :user_id
  end
end
