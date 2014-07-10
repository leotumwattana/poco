class PostsController < ApplicationController

  def index
    user_id = params[:user_id]

    if user_id.blank?
      @posts = Post.all
    else
      user = User.find(user_id)
      @posts = user.posts
    end
  end
end