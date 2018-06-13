class ApplicationController < ActionController::Base
  private

  def authenticate_user_from_token!
    oauth_token = params[:oauth_token].presence
    user = oauth_token && User.find_from_oauth_token(oauth_token)

    return unless user
    sign_in user, store: false
  end
end
