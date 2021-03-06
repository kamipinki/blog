Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
   resources :comments, only: [:create, :destroy]
  end
  root "welcome#index"
end