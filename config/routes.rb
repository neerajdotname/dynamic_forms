Rails.application.routes.draw do
  root to: "forms#index"

  resources :forms
end
