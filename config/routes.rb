Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :profiles
  resources :events do
    resources :attendances, only:[:new, :create]
    resources :ratings, except: [:edit, :update]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
