Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
   post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
   get 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end  

  root to: "posts#index"
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
end
