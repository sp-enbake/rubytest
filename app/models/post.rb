class Post < ActiveRecord::Base

 	validates_uniqueness_of :permalink

 	before_save :update_permalink

	URL = "http://enbake-rortest.herokuapp.com/"

	# Creates a permalink 
	def update_permalink
		title = URL+self.title.parameterize
	  exists = self.class.where(permalink: title).exists?
		exists ? title << "-#{self.class.last.id.to_i+1}" : title
		self.permalink = title
	end


end
