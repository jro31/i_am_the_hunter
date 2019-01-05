Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'jobs#index', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :jobs, only: [:new, :create, :index, :edit, :update, :destroy] do
    get 'new_position', on: :member
    patch 'update_position', on: :member
    get 'new_location', on: :member
    patch 'update_location', on: :member
    get 'new_salary', on: :member
    patch 'update_salary', on: :member
    get 'new_date_applied', on: :member
    patch 'update_date_applied', on: :member
    get 'new_url', on: :member
    patch 'update_url', on: :member
  end
end
