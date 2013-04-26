class Physician < ActiveRecord::Base
	has_many :appointments
	has_many :patients, :through => :appointments

	attr_accessible :name
	
 #  	accepts_nested_attributes_for :appointments
	# accepts_nested_attributes_for :patients
end
