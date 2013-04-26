class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.references :location
      t.references :budget
      t.boolean :tombstoned
      t.boolean :checkoutable
      t.decimal :cost, :scale =>2
      t.boolean :insured

      t.timestamps
    end
    add_index :kits, :location_id
  end
end
