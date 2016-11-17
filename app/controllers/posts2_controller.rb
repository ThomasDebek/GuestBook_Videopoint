class Posts2Controller < ApplicationController
  
  layout 'application2'

  def index
    @posts2 = Post2.all
  end

  def new
    @post2 = Post2.new
  end

  def create
    @post2 = Post2.new(post2_params)
    if @post2.save
      session[:author] = @post2.author
      flash[:notice] = "Post dodany pomyślnie."
      redirect_to posts2_path
    else
      render action: 'new'
    end
  end

  def show
  end


  def edit
  end

  def post2_params
    params.require(:post2).permit(:author, :title, :body, :published)
  end


end
