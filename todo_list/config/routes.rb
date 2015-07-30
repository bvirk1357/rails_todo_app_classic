Rails.application.routes.draw do

  resources :tasks, except: [:show, :new] do
    post :complete
  end

  get '/completed', to: 'tasks#completed', as: 'show_completed'
  get '/incomplete', to: 'tasks#incomplete', as: 'show_incomplete'
  delete '/completed', to: 'tasks#delete_completed', as: 'delete_completed'

  root 'home#index'
end
