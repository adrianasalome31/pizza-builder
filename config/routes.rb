Rails.application.routes.draw do
  resources :ingredientes
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get '/crear', to: 'builders#crear'
end
