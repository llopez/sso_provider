Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/auth/sso/authorize' => 'auth#authorize'
  get '/auth/sso/access_token' => 'auth#access_token'
  get '/auth/sso/user' => 'auth#user'
  get '/oauth/token' => 'auth#access_token'

end
