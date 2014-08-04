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
      title =URL<<"#{p_title.title.parameterize}-#{p_title.id}"<<
      p_title.update_attributes(:permalink=>title)
    end
  end 

end
