class InventoryRecord < ActiveRecord::Base
  resourcify

  belongs_to :user #, :inverse_of => :inventory_records
  belongs_to :inventory #, :inverse_of => :inventory_records
  belongs_to :inventory_status #, :inverse_of => :inventory_records
  belongs_to :location #, :inverse_of => :inventory_records
  belongs_to :hand_reciept

  attr_accessible :user_id, :inventory_id, :inventory_status_id, :location_id, :inventory_ids,:hand_reciept_id
  # , :latitude, :longitude

# TODO: not able to get the validates to work
  
  validates :user_id, :presence => true
  validates :inventory_id, :presence => true
  validates :inventory_status_id, :presence => true
  validates :location_id, :presence => true
  validates :hand_reciept_id, :presence => true, :format => {:with =>  /^\d$/}
  
  # validates :latitude, :presence => true
  # validates :longitude, :presence => true


  def self.search(search)
    if search
      find(:all, 
           :include => [:user, :inventory, :location, :hand_reciept],
           :conditions =>
           ['users.display_name LIKE ? OR inventories.name LIKE ? OR locations.name LIKE ? OR hand_reciepts.reciept LIKE ?',
            "%#{search}%","%#{search}%","%#{search}%","%#{search}%"],
           :order => "inventory_records.created_at desc")
    else
      find(:all)
    end
  end
end
