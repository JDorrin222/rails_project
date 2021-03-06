# Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Blogger::Application.routes.draw do
    root to: 'articles#index'
      resources :articles do
        resources :comments
      end
      resources :tags# ... other resources we have defined ...
    resources :authors
    resources :author_sessions, only: [ :new, :create, :destroy ]
    get 'login' => 'author_sessions#new'
    get 'logout' => 'author_sessions#destroy'
  end

# end
