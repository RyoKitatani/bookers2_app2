Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#show"
  resources :books, only:[:new, :create, :edit, :index, :show, :destroy, :update]
  resources :users, only:[:show, :edit, :update]
end
