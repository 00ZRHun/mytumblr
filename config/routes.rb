Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    
    resources :comments
    end

    # root to "posts#index"
    root "posts#index"   # post controller index action  
  
  get '/about', to: 'pages#about'
end
