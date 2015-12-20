class PostsController < ApplicationController
	def index
	@posts = Post.all
	end 

	def create


	params = ActionController::Parameters.new
	
	@post= Post.new(params[:post])#, :without_protection => true)
	
	if @post.save
	redirect_to posts_path, :notice => "Your Post Was Saved "
	else
	render "new"
	end # ENd of if else

	end

	def new
	@post = Post.new
	end 

	def edit
	@post = Post.find(params[:id])
	end

	def show
	@post = Post.find(params[:id])
	end

	def update
	@post = Post.find(params[:id])
	
	if @post.update_attributes(params[:post])
	redirect_to posts_path, :notice => "Your post has been updated"
	else
	render "edit"
	end #end of the if else

	end

	def destroy
	end


end
