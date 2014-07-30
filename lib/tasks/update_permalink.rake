  
  desc " Rake task to update permalinks"
  task :update_permalink => :environment do
		Post.all.find_each do |post|
			post.update_permalink
			saved = post.save
			if !saved
				post.update_permalink(true)
				post.save
			end 
		end
  end
