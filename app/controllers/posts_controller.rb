class PostsController < ApplicationController

	def index
		# Everything here will get run when someone goes to /post
		@posts = Post.all
	end

	def new
		@post = Post.new
	end
	
	def create
		Post.create( post_params )

		redirect_to posts_path
	end

	private 

	def post_params
		params.require(:post).permit(:title, :description)
	end

end
