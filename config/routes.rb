Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  resources :categories, except: %i[show] do
    resources :tasks, except: %i[show]
  end
end
