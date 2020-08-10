Rails.application.routes.draw do

  resources :users do
    get 'showme'
  end
  resources :sessions
  get 'sessions/new'
  resources :jobs do
    get 'all'
  end
end
