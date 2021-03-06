class SponsoredPostController < ApplicationController
  def index
    @sponsored_post = SponsoredPost.all
  end

  def show
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def new
    @sponsored_post = SponsoredPost.new
  end

  def create
    @sponsored_post = SponsoredPost.new
    @sponsored_post.title = params[:sponsored_post][:title]
    @sponsored_post.body = params[:sponsored_post][:body]
    @sponsored_post.price = params[:sponsored_post][:price]

    if @sponsored_post.save
      redirect_to @sponsored_post, notice: "Post was saved successfully."
    else
      flash.now[:alert] = "Error creating post. Please try again."
      render :new
    end
  end

  def edit
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def update
    @sponsored_post = SponsoredPost.find(params[:id])

    @sponsored_post.title = params[:sponsored_post][:title]
    @sponsored_post.body = params[:sponsored_post][:body]
    @sponsored_post.price = params[:sponsored_post][:price]

    if @sponsored_post.save
       flash[:notice] = "Post was updated."
      redirect_to @sponsored_post
    else
      flash.now[:alert] = "Error saving post. Please try again."
      render :edit
    end
  end

  def destroy
    @sponsored_post = SponsoredPost.find(params[:id])

    if @sponsored_post.destroy
      flash[:notice] = "Post was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end
end
