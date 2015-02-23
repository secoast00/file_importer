Rails.application.routes.draw do

  # resources :file_imports, only: [:new, :index]
  resources :file_imports do
    collection { post :import }
  end

  root 'file_imports#index'
end

