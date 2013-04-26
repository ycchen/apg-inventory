class DashboardsController < ApplicationController
  # before_filter :has_hand_reciept

  def show
  	if current_user.hand_reciept.nil?
		@myhandreciepts = current_user.inventory_records.order("created_at desc")		
  	else
		@myhandreciepts = current_user.hand_reciept.inventory_records.order("created_at desc")
  	end

  	@HandRecieptsCount = InventoryRecord.includes(:user, :inventory, :inventory_status).count(:group => :user_id)
  end


  private

  # def has_hand_reciept
  # end

end
