require 'securerandom'

class HandReciept < ActiveRecord::Base
  attr_accessible :reciept, :user_id, :inventories_attributes, :locations_attributes, :inventory_status_attributes

  belongs_to :user

  has_many :hand_reciept_details
  has_many :inventories		, :through => :hand_reciept_details
  has_many :locations  		, :through => :hand_reciept_details
  has_many :inventory_status, :through => :hand_reciept_details

  has_many :inventory_records
  has_many :inventories   , :through => :inventory_records

  validates :user_id, :presence => true
  # accepts_nested_attributes_for :inventories
  # accepts_nested_attributes_for :locations
  # accepts_nested_attributes_for :inventory_status
  
  
# scope :registered,    Inventory.where("id IN (select inventory_id from inventory_records where inventory_records.inventory_id = inventories.id)")


	def self.unique_reciept
		SecureRandom.hex(13)
	end

end
