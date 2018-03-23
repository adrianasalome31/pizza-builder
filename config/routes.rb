Rails.application.routes.draw do
  resources :ingredientes
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get '/crear', to: 'pizzas#new'
  resources :pizzas, except: [:new]

  get '/signup', to: 'usuarios#new'
  resources :usuarios, except: [:new]

  resources :tipos

end
