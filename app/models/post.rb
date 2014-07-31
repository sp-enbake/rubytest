class Post < ActiveRecord::Base

 	validates_uniqueness_of :permalink

	# Dummy url
	URL = "http://localhost:3000/"

	# Creates a permalink 
	def update_permalink(random=false)
		title = self.title.parameterize
		if random
			title+=rand(1 .. 50).to_s  
		end 
		self.permalink = URL+title
	end

end
