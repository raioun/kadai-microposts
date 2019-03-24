class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build # form_for用
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
    end

  end
end

# コントローラーには、render :index　がデフォルトで入っている