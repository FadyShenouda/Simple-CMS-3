Rails.application.routes.draw do

  root 'demo#index'

  get 'subjects/index'
  get 'demo/hello'
  get 'pages/blog'
  get 'demo/escape_output'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
