class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end

def counts(user)
  @count_microposts = user.microposts.count
  @count_followings = user.followings.count
  @count_followers = user.followers.count
  @count_likes = user.likes.count
end

# ApplicationController にメソッドを定義すると、全ての Controller で定義したメソッドが使用できるようになります。なぜなら、全ての Controller が ApplicationController を継承しているからです。