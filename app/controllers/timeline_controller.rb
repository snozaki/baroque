class TimelineController < ApplicationController

  before_action :check_Sign_in

  def index
    @user = User.find(current_user.id)
    @articles = Article.includes(:images).order("created_at DESC")
    @image = Image.all
    #binding.pry
    @article = Article.new #新規投稿用インスタンス
    #binding.pry
  end

  def check_Sign_in
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end

end
