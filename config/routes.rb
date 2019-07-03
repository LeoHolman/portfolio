Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/show'

  root 'pages#index'
  
  resources :skills do
    member do
      get :delete
    end
  end

  

  get 'pages/about'

  get 'pages/resume'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
