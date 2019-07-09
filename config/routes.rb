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
    member do 
      get :delete
    end
  end

  devise_for :admins
  get 'skill_sets/index'

  get 'skill_sets/show'

  get 'pages/about'

  get 'pages/resume'

  get '/admin', to: "pages#admin"

end
