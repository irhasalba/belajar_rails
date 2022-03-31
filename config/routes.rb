Rails.application.routes.draw do
  root "contacts#index"
  resources :contacts
  get "/contact/detail/:id", to: "contacts#show"



end
