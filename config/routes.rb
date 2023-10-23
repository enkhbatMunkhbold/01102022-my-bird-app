Rails.application.routes.draw do
  resources :birds
  
  root "birds#index"
  # get "/birds", to: "birds#show"
end
