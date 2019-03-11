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

# ApplicationController にメソッドを定義すると、全ての Controller で定義したメソッドが使用できるようになります。なぜなら、全ての Controller が ApplicationController を継承しているからです。