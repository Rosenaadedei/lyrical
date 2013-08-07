Lyrical::Application.routes.draw do
  root to: 'articles#index'
  resources :tags
  resources :authors
  resources :articles do
  resources :comments
    
  end
end