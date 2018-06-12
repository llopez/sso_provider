class ApplicationController < ActionController::Base

  private

  def authenticate_user_from_token!
    user_token = params[:oauth_token].presence
    user = user_token && User.find_for_token_authentication(user_token.to_s)

    return unless user
    sign_in user, store: false
  end
end
