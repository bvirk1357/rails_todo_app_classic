Rails.application.routes.draw do

  resources :tasks, except: [:show, :new] do
    post :complete
  end

  root 'home#index'
end
