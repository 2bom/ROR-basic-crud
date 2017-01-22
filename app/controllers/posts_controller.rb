class PostsController < ApplicationController
  def index
    @post_list = Post.all
  end

  def show
    @detail_post = Post.find(params[:post_id])
  end

  def new
  end

  def create
    new_list = Post.new
    new_list.title = params[:title]
    new_list.content = params[:content]
    new_list.save
    redirect_to "/posts/index"
  end

  def edit
    @edit_post = Post.find(params[:post_id])
  end

  def update
    edited_post = Post.find(params[:post_id])
    edited_post.title = params[:title]
    edited_post.content = params[:content]
    edited_post.save
    redirect_to "/posts/index"
  end

  def delete
    delete_post = Post.find(params[:post_id])
    delete_post.destroy
    redirect_to "/posts/index"
  end
end
