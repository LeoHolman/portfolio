Rails.application.routes.draw do

  devise_for :admins
  get 'skill_sets/index'

  get 'skill_sets/show'

  root 'pages#index'
  
  resources :skills do
    member do
      get :delete
    end
  end

  resources :projects do
  end

  resources :skill_sets do
  end

  get 'pages/about'

  get 'pages/resume'

  get '/admin', to: "pages#admin"

end
