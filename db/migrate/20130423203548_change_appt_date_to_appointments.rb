class ChangeApptDateToAppointments < ActiveRecord::Migration
  def up
  	change_column :appointments, :appt_date, :date
  end

  def down
  	change_column :appointments, :appt_date, :date
  end
end
