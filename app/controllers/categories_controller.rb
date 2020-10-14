class CategoriesController < ApplicationController

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    if @category.update(category_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @category.destroy
    redirect_to post_path(@post)
  end

  private

  def category_params
    params.require(:category).permit(:tag)
  end

end
