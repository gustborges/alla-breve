class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :post_find, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @category = @post.category_id
    if @post.save
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
  end

  def edit; end

  def update
    @category = @post.category_id
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_find
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :text, :user, :photo, :rich_body, :category_id)
  end

end
