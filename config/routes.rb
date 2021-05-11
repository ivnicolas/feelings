Rails.application.routes.draw do
  root 'sessions#welcome'

  get '/signup' , to: "users#new"
  post '/signup' , to: "users#create"
  get '/homepage' , to: "users#homepage"
  delete '/logout', to: "sessions#destroy"
    
  resources :sessions, only:[:new , :create, :destroy]
  resources :users, only:[:show, :new, :create , :edit, :destroy , :update ] do
    resources :user_feelings, only:[:index, :show, :new, :create, :edit, :update ]
  end 
  resources :feelings, only:[:show, :index]

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
