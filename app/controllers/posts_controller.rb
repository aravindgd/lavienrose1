class PostsController < ApplicationController
  def index
    @posts= Post.all
    @posts = Post.search(params[:search])
  end
  
  def search
    @post= Post.new
  end

  def show
    @posts= Post.find(params[:id])
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post was saved"
    else
      render "new", :notice => "Try again"
    end
  end

  def edit
  
  end

  def update
  
  end

  def destroy
  
  end

end
