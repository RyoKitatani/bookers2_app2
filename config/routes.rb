Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#show"
  resources :books, only:[:new, :create, :edit, :index, :show, :destroy, :update]
end
