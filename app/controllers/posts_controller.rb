class PostsController < ApplicationController
  def new
     @newPost = Post.new
  end

  def create
   @post = Post.new(post_params)
   @post.user_id = current_user.id #Assign the post to the user who created it
   respond_to do |f|
     if (@post.save)
       f.html{ redirect_to "" , notice: "Post Created!"}
     else
       f.html{ redirect_to "", notice: "Error : Post not saved !"}
     end
   end
  end

  private
  def post_params #allow certain data to be passed via forms
    params.require(:post).permit(:user_id, :content)
  end
end
