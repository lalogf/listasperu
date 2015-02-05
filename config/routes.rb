Rails.application.routes.draw do

  # root 'departamentos#index'

  resources :departamentos, only: [:index] do
    resources :provincias, only: [:index]
  end

    resources :provincias, only: [:index] do
      resources :distritos, only: [:index]
    end

end
