module ApplicationHelper

	def flashes_helper
	    results = []
	    flashes = [:alert, :error, :info, :notice, :success]

	    flashes.each do |name, msg|
	      hidden = "hide" if flash[name].blank?
	      results << content_tag(:div, content_tag(:p, flash[name]), class: "alert alter-#{name} #{hidden} alert-block").html_safe
	    end
	    results.join("").html_safe
	end

	def sortable(column, title = nil)
		title ||= column.titleize
		direction = (column == params[:sort] && sort_direction == "asc") ? "desc" : "asc"
		css_class = (column == params[:sort]) ? "current #{sort_direction}" : nil
		# Rails.logger.debug('before sort=' + sort_direction + ' params[:sort]='+ params[:sort].to_s+ ' sort_column=' + sort_column +  ' column=' + column + ' class='+ css_class.to_s)
		# direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
		# link_to title.titleize, :sort => column, :direction => direction
		link_to title.titleize, {:sort => column, :direction => direction}, :class => css_class
	end


	def show_debug
		if Rails.env.development?
			request.env.each do |e|
				debug("#{e[0]} =  #{e[1]}")
			end
		end
	end
end
