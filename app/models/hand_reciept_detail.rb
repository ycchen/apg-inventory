class HandRecieptDetail < ActiveRecord::Base
  belongs_to :hand_reciept
  belongs_to :inventory
  belongs_to :inventory_status
  belongs_to :location
  belongs_to :user
  # attr_accessible :title, :body
 
end
