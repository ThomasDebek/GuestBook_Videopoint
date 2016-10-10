class Posts2Controller < ApplicationController
  
  layout 'application2'

  
  
  
  def new
  end

  def edit
  end

  def index
    @posts2 = Post2.all
  end

  def show
  end
end
