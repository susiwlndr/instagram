class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = CommentPost.new
		@posts = @post.comment_posts
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
	end

	private
 
  def post_params
    params.require(:post).permit(:user_id, :image, :caption)
  end
end