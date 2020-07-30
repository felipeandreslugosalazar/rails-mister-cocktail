Rails.application.routes.draw do
  root to: "cocktails#index"

  # A user can see the list of cocktails (index)
  resources :cocktails, only: [:index, :show, :new, :create]
end
