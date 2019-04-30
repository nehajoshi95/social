# Rails.application.routes.draw do
#   #devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
#   # get 'sessions/create'
#   # get 'sessions/destroy'
#   # get 'home/show'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
	root  "home#show"
	resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end

