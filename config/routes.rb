Rails.application.routes.draw do

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

end
