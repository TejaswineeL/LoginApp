Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
	root 'static_pages#home'
	 get '/home', to: 'static_pages#home'
	 get '/help', to: 'static_pages#help'
get '/about',to: 'static_pages#about'
get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
 
  get 'sessions/new'
    get '/logout', to: 'sessions#destroy'
get '/signup', to: 'users#new'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :users

end
