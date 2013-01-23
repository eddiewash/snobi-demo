module ApplicationHelper

	def title #return a title on a per page basis
		base_title = "Snobi - share your tastes!"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
