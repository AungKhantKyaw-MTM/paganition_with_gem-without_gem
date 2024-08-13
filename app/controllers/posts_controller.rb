class PostsController < ApplicationController
  # def index
  #   page = params[:page].to_i || 1
  #   @per_page = 2  # Number of records per page
  #   offset = (page - 1) * @per_page
  #   @posts = Post.limit(@per_page).offset(offset)
  # end

  def index
    @posts = Post.paginate(page: params[:page], per_page: 2)
  end
end