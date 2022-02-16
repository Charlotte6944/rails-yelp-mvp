Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # un visiteur peut voir la liste de tous les restaurants
  # get 'restaurants', to: 'restaurants#index'

  # un visiteur peut ajouter un nouveau restau et être redirigé vers la vue show de la page de ce nouveau restau
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'

  resources :restaurants, only: [:new, :show, :create, :index] do
    resources :reviews, only: [:new, :create]
  end

  # resources :reviews, only: [:destroy, :update, :show]

  # get 'restaurants/:restaurant_id/review/new', to: 'reviews#new'
end
