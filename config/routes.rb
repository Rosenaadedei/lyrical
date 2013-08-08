Lyrical::Application.routes.draw do
  root to: 'articles#index'
  resources :tags
  resources :authors
  resources :articles do
    resources :comments
  end
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
end