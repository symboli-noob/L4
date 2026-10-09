
class TopController < ApplicationController
  def main
    if session[:login_uid] != nil
      render :main
    else
      render :login
    end
  end

  def login
    uid = params[:uid]
    pass = params[:pass]

    user = User.find_by(uid: uid)

    if user && BCrypt::Password.new(user.pass) == pass
      session[:login_uid] = user.uid
      redirect_to top_main_path
    else
      render :error, status: :unprocessable_entity
    end
  end

  def logout
    session.delete(:login_uid)
    redirect_to top_main_path
  end
end
