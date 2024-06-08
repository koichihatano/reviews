class PostsController < ApplicationController

  before_action :set_post, only: %i[edit update destroy]
  
  def index
    @posts = Post.includes(:user, :likes).order(created_at: :asc)
    @likes_count_hash = Like.group(:post_id).count
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    post = current_user.posts.create!(post_params)
    redirect_to post
  end
  
  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy!
    redirect_to root_path
  end

  private
    
  def post_params
    params.require(:post).permit(:content, :amazonurl)
  end
  def set_post
    @post = current_user.posts.find(params[:id])
  end  
end
