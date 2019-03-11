module SessionsHelper
  # 現在ログインしているユーザを取得するメソッド
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # ユーザがログインしていれば true を返し、ログインしていなければ false を返します。
  def logged_in?
    !!current_user
  end
end


# if @current_user
#   return @current_user
# else
#   @current_user = User.find_by(id: session[:user_id])
#   return @current_user
# end

# if current_user
#   return true
# else
#   return false
# end