class ForumPostsController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	def create

		@post = Post.find(params[:post_id])
		@comment = CommentPost.new(resource_params)

		@comment.post = @post
		@comment.user = User.first

	  if @comment.save
			redirect_to post_path(@post)
		else
			render 'post/show'
		end
	end

	private

	def resource_params
		params.require(:comment_post).permit(:comment)
	end
end