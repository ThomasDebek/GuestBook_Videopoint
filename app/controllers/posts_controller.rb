class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Dziekujemy za wpis"
          redirect_to posts_path
        end

      end
    end
  end

  def surprise

  end


  def post_params
    params.require(:post).permit(:author, :body)
  end


end
