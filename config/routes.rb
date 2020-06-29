Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show]
  # resources :recipe_ingredients
  # resources :allergies
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
