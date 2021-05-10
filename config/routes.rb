Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create , :edit, :destroy , :update] do
    resources :user_feelings, only:[:index, :show, :new, :create, :edit, :update ]
  end 
  resources :feelings, only:[:show, :index]

  get '/', to: "users#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
