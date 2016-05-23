class ArticlesController < ApplicationController

  def create
    article = Article.create(article_params)
    article.save
    #画像が添付されたときのみ保存
    unless params.require(:article).permit(:image).empty?
      binding.pry
      Image.create(image_params(article.id))
    end

    redirect_to controller: :timeline, action: :index

  end

  private
  def article_params
    params.require(:article).permit(:title, :text).merge(user_id: current_user.id)
  end

  def image_params(article_id)
    params.require(:article).permit(:image).merge(article_id: article_id)
  end

end
