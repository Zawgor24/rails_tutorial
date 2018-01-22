Rails.application.routes.draw do
  get 'session/new'

  get 'users/new'

  get 'static_pages/home'

  match '/signup',  to: 'users#new',            via: 'get'  
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

  root 'static_pages#home'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
