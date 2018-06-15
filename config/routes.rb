Rails.application.routes.draw do
  devise_for :users, sign_out_via: %i[get delete]

  get '/auth/sso/authorize' => 'auth#authorize'
  get '/auth/sso/access_token' => 'auth#access_token'
  get '/auth/sso/user' => 'auth#user'
  post '/oauth/token' => 'auth#access_token'

  get 'profile' => 'profile#show', as: :profile

  root to: 'home#show'
end
