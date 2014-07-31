class AddPermalinkToPost < ActiveRecord::Migration
  def change
    add_column :posts, :permalink, :string
    update_permalink
  end
private
  def update_permalink
	  URL = "http://enbake-rortest.herokuapp.com/"
    post_titles = Post.all
    post_titles.each do |p_title|
      title = p_title.title.parameterize
      title+=rand(1 .. 50).to_s
	    perma_link = URL+title
      p_title.update_attributes(:permalink=>row_perma)
   end 

end
