class PostsController < ApplicationController
  def index
    @posts= Post.all.order("created_at DESC")
  end

  def new
    @post= Post.new
  end

  def create
    @post= Post.create(post_params)

    if @post.save
      redirect_to @post
    else
      flash[:errors]= @post.errors.full_messages
      render 'new'
    end
  end

  def show
    @post= Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    post= Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end
  private
  def post_params
    params.require(:post).permit(:name, :email, :phone, :pick_up_location, :destination, :pick_up_date, :pick_up_time)
  end
end

