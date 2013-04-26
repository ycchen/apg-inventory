class Kit < ActiveRecord::Base
  
  belongs_to :location
  belongs_to :budget

  attr_accessible :location_id, :budget_id, :checkoutable, :cost, :insured, :tombstoned

  validates :budget, :presence => true
  validates :location, :presence => true
  validates :cost, :presence => true,
  					:numericality => true,
  					:format => {:with => /^\d{1,9}(\.\d{0,2})?$/, :message => "Numeric only"}


  
end
