class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :posts, through: :taggings

	def tag_list
	  self.tags.collect do |tag|
	    tag.name
	  end.join(", ")
	end

end
