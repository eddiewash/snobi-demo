module TagsHelper

	def tag_show
		raw @post.tags.map(&:name).map { |t| link_to t, tag_path(t) }.join(', ')
	end
end
