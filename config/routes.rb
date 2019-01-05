Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'jobs#index', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :jobs
end
