class PostController < ApplicationController
	def index 
		@posts=current_user.post.all
	end

	def show 
		@post=current_user.post.find(params[:id])
	end

	def new

		
		@post=current_user.post.new
	
		
	end

	def create
		#render plain: params[:notes].inspect
		@post=current_user.post.new(post_params)
		if(@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@post=current_user.post.find(params[:id])
	end

	def update
		@post=current_user.post.find(params[:id])
		if(@post.update(post_params))
			redirect_to @post
		else
			render 'edit'
		end

	end

	def destroy 
		@post=current_user.post.find(params[:id])
		@post.destroy

		redirect_to @post
	end


	private def post_params
		params.require(:post).permit(:content,image_upload: [] , document: [])
	end

end
