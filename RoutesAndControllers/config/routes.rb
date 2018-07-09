Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create', as: 'new_user'
  get '/users/new', to: 'users#new', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'show_user'
  patch '/users/:id', to: 'users#update', as: 'update_user'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'
end