Rails.application.routes.draw do
  resources :saved_messages
  resources :comments
  root to: "comments#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
