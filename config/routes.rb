Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "origins#index"

  resources :users, only: [:index, :show]
  resources :origins do
    resource :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
