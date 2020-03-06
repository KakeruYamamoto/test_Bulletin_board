Postclass PostController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  # def search
  #    @q = Post.search(search_params)
  #    @posts = @q.result(distinct: true)
  # end

  def show
  end

  def new
    if params[:back]
      @post = Post.new(post_params)
    else
      @post = Post.new
    end
  end

  def edit
  end

  def create
    @post = Posts.new(post_params)
    # @post = current_user.posts.build(post_params)
    if params[:back]
        render :new
      else
      if @post.save
        redirect_to posts_path, notice:"スレッドを作成しました！"
      else
        render :new
      end
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "スレッドを更新しました！"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice:"スレッドを削除しました！"
    # if current_user.id == @post.user.id
    #   @post.destroy
    #   redirect_to posts_path, notice:"イベントを削除しました！"
    # end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
  # def search_params
  #   params.require(:q).permit!
  # end
end
