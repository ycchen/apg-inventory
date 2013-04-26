class Patient < ActiveRecord::Base
	has_many :appointments
	has_many :physicians, :through => :appointments

	attr_accessible :name
	# ,:physicians_attributes
	# , :appointments_attributes

	# accepts_nested_attributes_for :appointments
	# accepts_nested_attributes_for :physicians
end
