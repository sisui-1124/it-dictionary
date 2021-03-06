Rails.application.routes.draw do
  root 'contents#index'
  devise_for :users
  resources :contents do
    resources :likes, only: [:create, :destroy]

    collection do
      get 'search_title'
      get 'search_content'
    end

  end

  resources :users, only: [:edit, :update]
end
