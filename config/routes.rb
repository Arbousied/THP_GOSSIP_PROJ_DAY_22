Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'city/:id', to: 'city#show', as: 'city'
  #get 'gossips/:id', to: 'gossips#show', as: 'gossips
  get 'welcome/:user_entry', to: 'welcome#show'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :gossips
  resources :users
  resources :sessions
end
