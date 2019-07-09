Rails.application.routes.draw do

  root 'pages#index'
  resources :experiences do 
    member do
      get :delete
    end
  end

  resources :jobs do
    member do 
      get :delete
    end
  end

  resources :projects do
    member do 
      get :delete
    end
  end

  resources :skills do
    member do
      get :delete
    end
  end

  resources :skill_sets do
  end

  devise_for :admins

  get 'pages/about'

  get 'pages/resume'

  get '/admin', to: "pages#admin"

end
