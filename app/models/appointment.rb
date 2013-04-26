class Appointment < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient
  
  attr_accessible :appt_date, :note, :physician_id, :patient_id

  validates :physician_id, :presence => true
  validates :patient_id,   :presence => true
  # accepts_nested_attributes_for :patient
end
