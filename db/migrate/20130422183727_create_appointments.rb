class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :physician
      t.references :patient
      t.datetime :appt_date
      t.text :note

      t.timestamps
    end
    add_index :appointments, :physician_id
    add_index :appointments, :patient_id
  end
end
