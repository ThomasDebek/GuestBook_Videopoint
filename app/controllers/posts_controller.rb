class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.page(params[:page]).per(3)
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
    params.require(:post).permit(:author, :body, :picture)
  end


end
