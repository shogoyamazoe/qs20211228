class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title,:startdate,:enddate,:check))
    if @post.save
      flash[:notice] = "スケジュール登録しました"
      redirect_to :posts
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
