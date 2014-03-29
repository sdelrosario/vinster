class PostsController < ApplicationController

	def index
		# Everything here will get run when someone goes to /post
		@posts = Post.all
	end

end
