Rails.application.routes.draw do
  root 'gossips#index'

    get 'gossips/index'
    get 'gossips/new'
    get 'gossips/show'
    post 'gossips/create'
    resources :gossips


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
