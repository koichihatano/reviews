Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  # 以下のルーティングを定義
  resources :users
end